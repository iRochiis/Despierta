package mx.jorge.despierta;
import android.app.*;import android.content.*;import android.content.pm.PackageManager;import android.os.Build;import java.util.*;import org.json.*;
public final class ScheduleController {
 static final int WAKE=207;
 static Intent service(Context c){return new Intent().setClassName(c,c.getPackageName()+".TripService").setAction("RELOAD");}
 static PendingIntent wake(Context c){return PendingIntent.getForegroundService(c,WAKE,service(c),PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);}
 static AlarmManager manager(Context c){return c.getSystemService(AlarmManager.class);}
 static boolean enabled(Context c){JSONArray a=AlarmStore.load(c);for(int i=0;i<a.length();i++)if(a.optJSONObject(i).optBoolean("enabled"))return true;return false;}
 static boolean ready(JSONObject a,Calendar now){return AlarmStore.eligible(a,now)&&!a.optString("lastFired").equals(AlarmStore.windowKey(a,now));}
 static boolean wanted(Context c,Calendar now){JSONArray a=AlarmStore.load(c);for(int i=0;i<a.length();i++)if(ready(a.optJSONObject(i),now))return true;return false;}
 public static boolean permitted(Context c){return c.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION")==PackageManager.PERMISSION_GRANTED&&(Build.VERSION.SDK_INT<29||c.checkSelfPermission("android.permission.ACCESS_BACKGROUND_LOCATION")==PackageManager.PERMISSION_GRANTED)&&(Build.VERSION.SDK_INT<31||manager(c).canScheduleExactAlarms());}
 static long next(Context c,boolean current){return ScheduleTimes.next(AlarmStore.load(c),System.currentTimeMillis(),current);}
 static void arm(Context c,long at){try{manager(c).cancel(wake(c));c.getSharedPreferences("schedule",0).edit().putLong("next",at).apply();if(at>0&&permitted(c))manager(c).setExactAndAllowWhileIdle(AlarmManager.RTC_WAKEUP,at,wake(c));}catch(RuntimeException e){DeviceCompatibility.problem(c,e);}}
 public static void plan(Context c){if(!enabled(c)){arm(c,0);return;}boolean now=wanted(c,Calendar.getInstance());arm(c,now?System.currentTimeMillis()+1000:next(c,false));}
 public static void sync(Context c){try{c.getSharedPreferences("schedule",0).edit().remove("error").apply();if(!enabled(c)){arm(c,0);c.stopService(service(c));return;}if(!permitted(c)){c.startActivity(new Intent(c,ScheduleSetupActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));return;}if(wanted(c,Calendar.getInstance())){arm(c,next(c,true));c.startForegroundService(service(c));}else{arm(c,next(c,false));c.stopService(service(c));}}catch(RuntimeException e){DeviceCompatibility.problem(c,e);}}
 public static void afterRefresh(Service service){try{if(!wanted(service,Calendar.getInstance())){plan(service);service.stopForeground(Service.STOP_FOREGROUND_REMOVE);service.stopSelf();}else if(permitted(service))arm(service,next(service,true));}catch(Exception e){service.getSharedPreferences("schedule",0).edit().putString("error",e.getClass().getSimpleName()).apply();}}
 public static String describe(Context c){if(enabled(c)&&!permitted(c))return "Faltan permisos · pulsa Revisar programación";long n=c.getSharedPreferences("schedule",0).getLong("next",0);return enabled(c)&&n>0?"En pausa · próxima vigilancia "+new java.text.SimpleDateFormat("EEE HH:mm",Locale.getDefault()).format(new Date(n)):"Vigilancia detenida";}
}
