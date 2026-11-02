import mx.jorge.despierta.JourneyRules;
public class JourneyRulesCheck {
 static int count;static void check(boolean ok){count++;if(!ok)throw new AssertionError("Journey check "+count);}
 public static void main(String[] args){
 check(JourneyRules.first(501,500,"ask")==JourneyRules.ARMED);
 check(JourneyRules.first(500,500,"ask")==JourneyRules.ASK);
 check(JourneyRules.first(200,500,"wait")==JourneyRules.WAITING);
 check(JourneyRules.first(200,500,"now")==JourneyRules.ARMED);
 check(!JourneyRules.arrive(200,500,JourneyRules.WAITING));
 check(!JourneyRules.arrive(200,500,JourneyRules.ASK));
 check(JourneyRules.arrive(500,500,JourneyRules.ARMED));
 check(!JourneyRules.left(550,500,10));
 check(JourneyRules.left(551,500,10));
 check(!JourneyRules.left(580,500,100));
 check(JourneyRules.left(601,500,100));
 check(JourneyRules.early(1000,500,1000,false));
 check(!JourneyRules.early(1000,500,1000,true));
 check(!JourneyRules.early(500,500,1000,false));
 check(!JourneyRules.early(1001,500,1000,false));
 check(!JourneyRules.early(600,500,400,false));
 int state=JourneyRules.first(200,500,"wait");if(JourneyRules.left(551,500,10))state=JourneyRules.ARMED;
 check(JourneyRules.arrive(490,500,state));
 System.out.println(count+" journey checks passed");}
}
