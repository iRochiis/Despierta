package mx.jorge.despierta;
import org.json.*;import java.util.*;
public final class ScheduleTimes {
 public static long next(JSONArray all,long after,boolean current){Calendar t=Calendar.getInstance();t.setTimeInMillis(after);t.set(Calendar.SECOND,0);t.set(Calendar.MILLISECOND,0);for(int i=0;i<8*24*60;i++){t.add(Calendar.MINUTE,1);boolean on=false;for(int j=0;j<all.length();j++)if(ScheduleController.ready(all.optJSONObject(j),t)){on=true;break;}if(on!=current)return t.getTimeInMillis();}return 0;}
}
