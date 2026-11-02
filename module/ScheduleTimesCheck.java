import mx.jorge.despierta.*;import org.json.*;import java.util.*;
public class ScheduleTimesCheck {
 static int checks;static long at(int day,int hour,int min){Calendar c=new GregorianCalendar(2026,10,day,hour,min);c.set(Calendar.SECOND,0);c.set(Calendar.MILLISECOND,0);return c.getTimeInMillis();}
 static void check(boolean b){checks++;if(!b)throw new AssertionError("Check "+checks);}
 public static void main(String[] args)throws Exception{TimeZone.setDefault(TimeZone.getTimeZone("America/Mexico_City"));JSONObject a=new JSONObject().put("enabled",true).put("days",31).put("always",false).put("from",1080).put("until",1439);JSONArray all=new JSONArray().put(a);
 check(ScheduleTimes.next(all,at(2,8,0),false)==at(2,18,0));check(ScheduleTimes.next(all,at(2,18,0),true)==at(3,0,0));check(ScheduleTimes.next(all,at(6,23,59),true)==at(7,0,0));check(ScheduleTimes.next(all,at(7,12,0),false)==at(9,18,0));
 a.put("days",16).put("from",1320).put("until",120);check(ScheduleTimes.next(all,at(6,23,0),true)==at(7,2,1));check(ScheduleTimes.next(all,at(7,2,1),false)==at(13,22,0));
 a.put("always",true).put("days",31);check(ScheduleTimes.next(all,at(6,23,0),true)==at(7,0,0));check(ScheduleTimes.next(all,at(7,8,0),false)==at(9,0,0));a.put("days",127);check(ScheduleTimes.next(all,at(2,1,0),true)==0);
 a.put("always",false).put("days",31).put("from",1080).put("until",1200).put("lastFired","2026-306");check(ScheduleTimes.next(all,at(2,19,0),false)==at(3,18,0));a.put("enabled",false);check(ScheduleTimes.next(all,at(2,19,0),false)==0);
 a.put("enabled",true).remove("lastFired");JSONObject b=new JSONObject(a.toString()).put("from",1140).put("until",1260);all.put(b);check(ScheduleTimes.next(all,at(2,18,0),true)==at(2,21,1));check(ScheduleTimes.next(new JSONArray(),at(2,1,0),false)==0);System.out.println(checks+" scheduling checks passed");}
}
