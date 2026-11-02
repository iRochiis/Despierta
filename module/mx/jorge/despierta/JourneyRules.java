package mx.jorge.despierta;
public final class JourneyRules {
 public static final int UNKNOWN=0,WAITING=1,ARMED=2,ASK=3;
 public static int first(double distance,int radius,String mode){if(distance>radius)return ARMED;return "now".equals(mode)?ARMED:"wait".equals(mode)?WAITING:ASK;}
 public static boolean left(double distance,int radius,float accuracy){return distance>radius+Math.max(50,accuracy);}
 public static boolean early(double distance,int radius,int early,boolean sent){return !sent&&early>radius&&distance>radius&&distance<=early;}
 public static boolean arrive(double distance,int radius,int state){return state==ARMED&&distance<=radius;}
}
