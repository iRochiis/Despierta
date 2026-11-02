package mx.jorge.despierta;
import org.json.*;import java.util.*;
public class VibrationPatternCheck {
 static int count;static void check(boolean b){count++;if(!b)throw new AssertionError("check "+count);}
 static void invalid(long[] p){boolean failed=false;try{VibrationPattern.validate(p);}catch(IllegalArgumentException e){failed=true;}check(failed);}
 public static void main(String[] args)throws Exception{for(long[] p:VibrationPattern.PRESETS)check(VibrationPattern.validate(p).length==p.length);long[] a=VibrationPattern.recorded(Arrays.asList(0L,500L,200L,700L));check(Arrays.equals(a,new long[]{0,500,200,700,500}));boolean empty=false;try{VibrationPattern.recorded(Arrays.asList(0L));}catch(IllegalArgumentException e){empty=true;}check(empty);invalid(new long[]{0,0,500});invalid(new long[]{10,200});invalid(new long[]{0,-1});invalid(new long[]{0,15000,10000});invalid(new long[82]);JSONObject d=new JSONObject().put("vibrationPattern",new JSONArray().put(0).put(500).put(200));check(VibrationPattern.read(d)[1]==500);d.put("vibrationPattern",new JSONArray().put(0).put(-1));check(Arrays.equals(VibrationPattern.read(d),VibrationPattern.PRESETS[0]));check(Arrays.equals(VibrationPattern.read(new JSONObject()),VibrationPattern.PRESETS[0]));System.out.println(count+" vibration pattern checks passed");}
}
