package mx.jorge.despierta;

import android.content.Context;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AlarmStore {
    public static JSONArray load(Context context) {
        try {
            return new JSONArray(context.getSharedPreferences("alarms", 0).getString("items", "[]"));
        } catch (Exception e) {
            return new JSONArray();
        }
    }

    public static void save(Context context, JSONArray jSONArray) {
        context.getSharedPreferences("alarms", 0).edit().putString("items", jSONArray.toString()).apply();
    }

    public static void put(Context context, JSONObject jSONObject) {
        JSONArray jSONArrayLoad = load(context);
        JSONArray jSONArray = new JSONArray();
        boolean z = false;
        for (int i = 0; i < jSONArrayLoad.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayLoad.optJSONObject(i);
            if (jSONObjectOptJSONObject.optString("id").equals(jSONObject.optString("id"))) {
                jSONArray.put(jSONObject);
                z = true;
            } else {
                jSONArray.put(jSONObjectOptJSONObject);
            }
        }
        if (!z) {
            jSONArray.put(jSONObject);
        }
        save(context, jSONArray);
    }

    public static void remove(Context context, String str) {
        JSONArray jSONArrayLoad = load(context);
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < jSONArrayLoad.length(); i++) {
            if (!jSONArrayLoad.optJSONObject(i).optString("id").equals(str)) {
                jSONArray.put(jSONArrayLoad.optJSONObject(i));
            }
        }
        save(context, jSONArray);
    }

    public static String days(int i) {
        if (i == 127) {
            return "Todos los días";
        }
        if (i == 31) {
            return "Lun–Vie";
        }
        String[] strArr = {"Lun", "Mar", "Mié", "Jue", "Vie", "Sáb", "Dom"};
        String str = "";
        for (int i2 = 0; i2 < 7; i2++) {
            if (((1 << i2) & i) != 0) {
                str = str + (str.isEmpty() ? "" : " · ") + strArr[i2];
            }
        }
        return str;
    }

    public static String time(int i) {
        return String.format(Locale.ROOT, "%02d:%02d", Integer.valueOf(i / 60), Integer.valueOf(i % 60));
    }

    public static int dayIndex(Calendar calendar) {
        return (calendar.get(7) + 5) % 7;
    }

    public static boolean always(JSONObject jSONObject) {
        boolean z = false;
        if (jSONObject.optInt("from", 0) == 0 && jSONObject.optInt("until", 1439) == 1439) {
            z = true;
        }
        return jSONObject.optBoolean("always", z);
    }

    public static boolean eligible(JSONObject jSONObject, Calendar calendar) {
        boolean z;
        if (!jSONObject.optBoolean("enabled")) {
            return false;
        }
        if (always(jSONObject)) {
            return (jSONObject.optInt("days", 127) & (1 << dayIndex(calendar))) != 0;
        }
        int i = (calendar.get(11) * 60) + calendar.get(12);
        int iOptInt = jSONObject.optInt("from", 0);
        int iOptInt2 = jSONObject.optInt("until", 1439);
        Calendar calendar2 = (Calendar) calendar.clone();
        if (iOptInt <= iOptInt2) {
            z = i >= iOptInt && i <= iOptInt2;
        } else {
            boolean z2 = i >= iOptInt || i <= iOptInt2;
            if (i <= iOptInt2) {
                calendar2.add(5, -1);
            }
            z = z2;
        }
        return z && (jSONObject.optInt("days", 127) & (1 << dayIndex(calendar2))) != 0;
    }

    public static String windowKey(JSONObject jSONObject, Calendar calendar) {
        Calendar calendar2 = (Calendar) calendar.clone();
        int i = (calendar2.get(11) * 60) + calendar2.get(12);
        if (!always(jSONObject) && jSONObject.optInt("from") > jSONObject.optInt("until", 1439) && i <= jSONObject.optInt("until", 1439)) {
            calendar2.add(5, -1);
        }
        return calendar2.get(1) + "-" + calendar2.get(6);
    }
}
