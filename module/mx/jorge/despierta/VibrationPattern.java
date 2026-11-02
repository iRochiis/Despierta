package mx.jorge.despierta;
import org.json.*;import java.util.*;
public final class VibrationPattern {
 public static final String[] NAMES={"Clásica","Pulsos cortos","Doble pulso","Pulsos largos"};
 public static final long[][] PRESETS={{0,1000,350,1000,350,1500,700},{0,250,250,250,250,250,750},{0,180,120,180,900},{0,1500,500,1500,700}};
 public static long[] validate(long[] a){if(a==null||a.length<2||a.length>81||a[0]!=0)throw new IllegalArgumentException("Patrón inválido");long sum=0;boolean pulse=false;for(int i=0;i<a.length;i++){if(a[i]<0||a[i]>20000)throw new IllegalArgumentException("Duración inválida");sum+=a[i];if(i%2==1&&a[i]>=40)pulse=true;}if(!pulse||sum>21000)throw new IllegalArgumentException("Graba al menos un pulso; máximo 20 segundos");return a.clone();}
 public static long[] read(JSONObject alarm){try{JSONArray a=alarm.optJSONArray("vibrationPattern");if(a==null)return PRESETS[0].clone();long[] v=new long[a.length()];for(int i=0;i<v.length;i++)v[i]=a.getLong(i);return validate(v);}catch(Exception e){return PRESETS[0].clone();}}
 public static long[] recorded(List<Long> segments){if(segments==null||segments.size()<2||segments.size()%2!=0)throw new IllegalArgumentException("Graba al menos un pulso");long[] a=new long[segments.size()+1];for(int i=0;i<segments.size();i++)a[i]=segments.get(i);a[a.length-1]=500;return validate(a);}
}
