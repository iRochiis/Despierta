package mx.jorge.despierta;
import android.content.*;import android.os.*;import android.media.*;import org.json.*;
public final class PatternPlayer {
 static long[] active=VibrationPattern.PRESETS[0].clone();
 public static void select(JSONObject alarm){active=VibrationPattern.read(alarm);}
 public static void play(Context c){play(c,active,true);}
 public static void play(Context c,long[] pattern,boolean repeat){Vibrator v=(Vibrator)c.getSystemService(Context.VIBRATOR_SERVICE);if(v==null||!v.hasVibrator())return;VibrationEffect e=VibrationEffect.createWaveform(VibrationPattern.validate(pattern),repeat?0:-1);if(Build.VERSION.SDK_INT>=33)v.vibrate(e,new VibrationAttributes.Builder().setUsage(VibrationAttributes.USAGE_ALARM).build());else v.vibrate(e,new AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_ALARM).build());}
 public static void hold(Context c,long duration){Vibrator v=(Vibrator)c.getSystemService(Context.VIBRATOR_SERVICE);if(v==null||!v.hasVibrator())return;VibrationEffect effect=VibrationEffect.createOneShot(Math.min(20000,Math.max(1,duration)),VibrationEffect.DEFAULT_AMPLITUDE);if(Build.VERSION.SDK_INT>=33)v.vibrate(effect,new VibrationAttributes.Builder().setUsage(VibrationAttributes.USAGE_ALARM).build());else v.vibrate(effect,new AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_ALARM).build());}
 static boolean ringing(){try{return Class.forName("mx.jorge.despierta.TripService").getField("ringing").getBoolean(null);}catch(Exception e){return false;}}
}
