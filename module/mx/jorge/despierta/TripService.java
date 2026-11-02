package mx.jorge.despierta;
import android.app.Service;import android.content.Intent;import android.location.Location;import android.media.MediaPlayer;import android.os.*;import org.json.*;import java.util.*;
/** Compile-only declarations. Runtime implementation is retained in project/smali. */
public class TripService extends Service {
 public static boolean ringing,active;public static long lastLocationAt;boolean testing,alertVibration,tracking;long lastFix;String name;JSONArray alarms;MediaPlayer player;
 boolean ready(JSONObject a,Calendar c){return false;}void update(String s){}void alarm(JSONObject a,String s,boolean warning){}void vibrateAlarm(){}public IBinder onBind(Intent i){return null;}
}
