"""Regression checks for the smali runtime (the Java TripService is a stub)."""
from pathlib import Path
import re
import unittest

ROOT = Path(__file__).resolve().parents[1]
SOURCE = (ROOT / 'project/smali/mx/jorge/despierta/TripService.smali').read_text()

def method(name):
    return SOURCE.split('.method ' + name, 1)[1].split('.end method', 1)[0]

class GpsWarningRegression(unittest.TestCase):
    def test_signal_warning_returns_before_alarm_side_effects(self):
        alarm = method('alarm(')
        guard = re.search(r'if-eqz p3, :(\w+)', alarm)
        self.assertIsNotNone(guard)
        warning, arrival = alarm[guard.end():].split(':' + guard[1], 1)
        code = '\n'.join(line for line in warning.splitlines() if not line.strip().startswith('#'))
        self.assertIn('->update(Ljava/lang/String;)V', code)
        self.assertIn('return-void', code)
        # Warning branch may only update the silent foreground notification.
        calls = re.findall(r'invoke-[^\n]+', code)
        self.assertEqual(len(calls), 1)
        self.assertNotIn('sput-', code)
        self.assertIn('->vibrateAlarm()V', arrival)
        self.assertIn('->publishAlarm(Ljava/lang/String;)V', arrival)

    def test_arrival_stops_gps_before_holding_alarm(self):
        alarm = method('alarm(')
        self.assertLess(alarm.index('->stopTracking()V'), alarm.index('->holdAlert()V'))

    def test_both_gps_failure_routes_use_warning_flag(self):
        for name in ('public onProviderDisabled(', 'refreshWindowOriginal('):
            body = method(name)
            call = re.search(r'invoke-virtual \{p0, (\w+), (\w+), (\w+)\}, Lmx/jorge/despierta/TripService;->alarm\(', body)
            self.assertIsNotNone(call, name)
            self.assertRegex(body[:call.start()], r'const/4 ' + call[3] + r', 0x1\b')

    def test_status_channel_has_no_sound_or_vibration(self):
        body = method('public onCreate(')
        channel = body.split('const-string v3, "Avisos de llegada"', 1)[0]
        self.assertIn('->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V', channel)
        self.assertIn('const/4 v2, 0x0', channel)
        self.assertIn('->enableVibration(Z)V', channel)

if __name__ == '__main__':
    unittest.main()
