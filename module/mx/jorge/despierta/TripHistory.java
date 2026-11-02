package mx.jorge.despierta;
import android.content.*;import org.json.*;
public final class TripHistory {
 public static synchronized void add(Context c,String event){try{JSONArray old=read(c),out=new JSONArray();out.put(new JSONObject().put("at",System.currentTimeMillis()).put("event",event));for(int i=0;i<old.length()&&i<99;i++)out.put(old.get(i));c.getSharedPreferences("journeyHistory",0).edit().putString("items",out.toString()).apply();}catch(Exception ignored){}}
 public static JSONArray read(Context c){try{return new JSONArray(c.getSharedPreferences("journeyHistory",0).getString("items","[]"));}catch(Exception e){return new JSONArray();}}
}
