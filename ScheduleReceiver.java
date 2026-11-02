package mx.jorge.despierta;
import android.content.*;
public final class ScheduleReceiver extends BroadcastReceiver {public void onReceive(Context c,Intent i){try{ScheduleController.plan(c);}catch(Exception ignored){}}}
