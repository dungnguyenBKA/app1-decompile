package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.ads.ADRequestList;
import com.google.ads.consent.ConsentStatus;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.io.File;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: cc0  reason: default package */
public class cc0 {
    private static int a = -1;

    public static void A(Context context, String str) {
        t(context).edit().putString("self_ads", str).apply();
    }

    public static boolean B(Context context, String str) {
        return i(context, str, "use_adc_id", 0) == 1;
    }

    public static boolean C(Context context, String str) {
        return i(context, str, "use_adx_id", 0) == 1;
    }

    public static boolean D(Context context) {
        String m = m(context);
        if (!TextUtils.isEmpty(m)) {
            try {
                JSONObject jSONObject = new JSONObject(m);
                if (!jSONObject.has("use_remote_config") || jSONObject.optInt("use_remote_config", 1) == 1) {
                    return true;
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static void a(Context context, String str, int i) {
        String string = t(context).getString("ad_click_cache", "");
        try {
            if (!string.equals("")) {
                JSONObject jSONObject = new JSONObject(string);
                JSONArray optJSONArray = jSONObject.optJSONArray("" + i);
                JSONArray jSONArray = new JSONArray();
                if (optJSONArray != null) {
                    jSONArray.put(str);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= optJSONArray.length()) {
                            break;
                        } else if (i2 >= 9) {
                            break;
                        } else {
                            int i3 = i2 + 1;
                            jSONArray.put(i3, optJSONArray.get(i2));
                            i2 = i3;
                        }
                    }
                } else {
                    jSONArray.put(str);
                }
                jSONObject.put("" + i, jSONArray);
                t(context).edit().putString("ad_click_cache", jSONObject.toString()).apply();
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(str);
            jSONObject2.put("" + i, jSONArray2);
            t(context).edit().putString("ad_click_cache", jSONObject2.toString()).apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void b(Context context, String str, int i) {
        String string = t(context).getString("ad_view_count", "");
        try {
            if (!string.equals("")) {
                JSONObject jSONObject = new JSONObject(string);
                if (jSONObject.has(i + "")) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(i + "");
                    JSONArray jSONArray = new JSONArray();
                    boolean z = false;
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                        if (jSONObject2.has(str)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put(str, jSONObject2.optInt(str) + 1);
                            jSONArray.put(jSONObject3);
                            z = true;
                        } else {
                            jSONArray.put(jSONObject2);
                        }
                    }
                    if (!z) {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put(str, 1);
                        jSONArray.put(jSONObject4);
                    }
                    jSONObject.remove(i + "");
                    jSONObject.put(i + "", jSONArray);
                } else {
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(str, 1);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(jSONObject5);
                    jSONObject.put(i + "", jSONArray2);
                }
                t(context).edit().putString("ad_view_count", jSONObject.toString()).apply();
                return;
            }
            JSONObject jSONObject6 = new JSONObject();
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put(str, 1);
            JSONArray jSONArray3 = new JSONArray();
            jSONArray3.put(jSONObject7);
            jSONObject6.put(i + "", jSONArray3);
            t(context).edit().putString("ad_view_count", jSONObject6.toString()).apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_CONFIG;
        }
        String str2 = null;
        if (D(context)) {
            try {
                String d = bc0.c(null).d(str, "");
                if (!TextUtils.isEmpty(d)) {
                    str2 = d;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return TextUtils.isEmpty(str2) ? m(context) : str2;
    }

    public static int d(Context context, String str) {
        int i = a;
        if (i != -1) {
            return i;
        }
        a = i(context, str, "use_old_admob_id", 0);
        String k = k(context, str, "ad_acc", "");
        if (!TextUtils.isEmpty(k)) {
            int nextInt = new Random().nextInt(10000) + 1;
            try {
                JSONObject jSONObject = new JSONObject(k);
                int optDouble = (int) (jSONObject.optDouble("US", 0.0d) * 100.0d);
                if (nextInt <= optDouble) {
                    a = 0;
                    return 0;
                }
                int optDouble2 = optDouble + ((int) (jSONObject.optDouble("HK", 0.0d) * 100.0d));
                if (nextInt <= optDouble2) {
                    a = 1;
                    return 1;
                } else if (nextInt <= optDouble2 + ((int) (jSONObject.optDouble("SG", 0.0d) * 100.0d))) {
                    a = 2;
                    return 2;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return a;
    }

    public static String e(Context context, String str, String str2) {
        String c = c(context, null);
        if (!c.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(c);
                if (str.equals("") || !jSONObject.has(str)) {
                    str = "AD_B";
                }
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = new JSONArray(jSONObject.getString(str));
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            String string = jSONArray.getString(i);
                            if (string.contains(":")) {
                                String[] split = TextUtils.split(string, ":");
                                if (new Random().nextInt(100) + 1 <= Integer.parseInt(split[1].trim())) {
                                    jSONArray2.put(split[0].trim());
                                }
                            } else {
                                jSONArray2.put(string);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    return jSONArray2.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        JSONArray jSONArray3 = new JSONArray();
        jSONArray3.put(ADRequestList.ADMOB_N_H);
        jSONArray3.put(ADRequestList.FAN_N_H);
        try {
            if (context.getResources().getConfiguration().locale.getLanguage().equals("ru")) {
                jSONArray3.put(ADRequestList.VK);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        jSONArray3.put(ADRequestList.ADMOB_N_M);
        jSONArray3.put(ADRequestList.ADMOB_N_R);
        jSONArray3.put(ADRequestList.FAN_N_R);
        jSONArray3.put(ADRequestList.SELF);
        return jSONArray3.toString();
    }

    public static int f(Context context) {
        return t(context).getInt("eea_status", -1);
    }

    public static boolean g(Context context, String str, boolean z) {
        if (D(context)) {
            try {
                String d = bc0.c(null).d(TextUtils.isEmpty(null) ? "common_config" : null, "");
                if (!TextUtils.isEmpty(d)) {
                    JSONObject jSONObject = new JSONObject(d);
                    if (jSONObject.has(str)) {
                        return jSONObject.optBoolean(str, z);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String m = m(context);
        if (m.equals("")) {
            return z;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(m);
            if (jSONObject2.has(str)) {
                return jSONObject2.optBoolean(str, z);
            }
            return z;
        } catch (Exception e2) {
            e2.printStackTrace();
            return z;
        }
    }

    public static int h(Context context, String str, int i) {
        return i(context, null, str, i);
    }

    public static int i(Context context, String str, String str2, int i) {
        if (D(context)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    str = "common_config";
                }
                String d = bc0.c(null).d(str, "");
                if (!TextUtils.isEmpty(d)) {
                    JSONObject jSONObject = new JSONObject(d);
                    if (jSONObject.has(str2)) {
                        return jSONObject.optInt(str2, i);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String m = m(context);
        if (!m.equals("")) {
            try {
                JSONObject jSONObject2 = new JSONObject(m);
                if (jSONObject2.has(str2)) {
                    return jSONObject2.optInt(str2, i);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return i;
    }

    public static String j(Context context, String str, String str2) {
        return k(context, null, str, str2);
    }

    public static String k(Context context, String str, String str2, String str3) {
        if (D(context)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    str = "common_config";
                }
                String d = bc0.c(null).d(str, "");
                if (!TextUtils.isEmpty(d)) {
                    JSONObject jSONObject = new JSONObject(d);
                    if (jSONObject.has(str2)) {
                        return jSONObject.optString(str2, str3);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String m = m(context);
        if (!m.equals("")) {
            try {
                JSONObject jSONObject2 = new JSONObject(m);
                if (jSONObject2.has(str2)) {
                    return jSONObject2.optString(str2, str3);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return str3;
    }

    public static ConsentStatus l(Context context) {
        return ConsentStatus.valueOf(t(context).getString("consent_status", ConsentStatus.UNKNOWN.name()));
    }

    public static String m(Context context) {
        return t(context).getString("extends_data", "");
    }

    public static String n(Context context, String str) {
        String r = r("ad_fan_no_click_area", "");
        if (TextUtils.isEmpty(r) || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(r);
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String o(Context context) {
        String str;
        try {
            File filesDir = context.getFilesDir();
            if (!filesDir.exists()) {
                return "";
            }
            File file = new File(filesDir.getAbsolutePath() + File.separator + "lib_promote_ad");
            if (file.exists()) {
                str = file.getAbsolutePath();
            } else if (!file.mkdir()) {
                return "";
            } else {
                str = file.getAbsolutePath();
            }
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String p(Context context, String str, String str2) {
        String c = c(context, null);
        if (!c.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(c);
                if (str.equals("") || !jSONObject.has(str)) {
                    str = "AD_INTERSTITIAL";
                }
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = new JSONArray(jSONObject.getString(str));
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            String string = jSONArray.getString(i);
                            if (string.contains(":")) {
                                String[] split = TextUtils.split(string, ":");
                                if (new Random().nextInt(100) + 1 <= Integer.parseInt(split[1].trim())) {
                                    jSONArray2.put(split[0].trim());
                                }
                            } else {
                                jSONArray2.put(string);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    return jSONArray2.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        JSONArray jSONArray3 = new JSONArray();
        jSONArray3.put(ADRequestList.ADMOB_I_H);
        jSONArray3.put(ADRequestList.FAN_I_H);
        jSONArray3.put(ADRequestList.ADMOB_I_M);
        jSONArray3.put(ADRequestList.ADMOB_I_R);
        jSONArray3.put(ADRequestList.FAN_I_R);
        return jSONArray3.toString();
    }

    public static String q(Context context, String str, String str2) {
        String c = c(context, null);
        if (!c.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(c);
                if (str.equals("") || !jSONObject.has(str)) {
                    str = "AD_R_N";
                }
                if (jSONObject.has(str)) {
                    JSONArray jSONArray = new JSONArray(jSONObject.getString(str));
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            String string = jSONArray.getString(i);
                            if (string.contains(":")) {
                                String[] split = TextUtils.split(string, ":");
                                if (new Random().nextInt(100) + 1 <= Integer.parseInt(split[1].trim())) {
                                    jSONArray2.put(split[0].trim());
                                }
                            } else {
                                jSONArray2.put(string);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    return jSONArray2.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        JSONArray jSONArray3 = new JSONArray();
        jSONArray3.put(ADRequestList.ADMOB_N_H);
        jSONArray3.put(ADRequestList.FAN_N_H);
        try {
            if (context.getResources().getConfiguration().locale.getLanguage().equals("ru")) {
                jSONArray3.put(ADRequestList.VK);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        jSONArray3.put(ADRequestList.ADMOB_N_M);
        jSONArray3.put(ADRequestList.ADMOB_N_R);
        jSONArray3.put(ADRequestList.FAN_N_R);
        jSONArray3.put(ADRequestList.SELF);
        return jSONArray3.toString();
    }

    public static String r(String str, String str2) {
        try {
            return bc0.c(null).d(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static String s(Context context) {
        return t(context).getString("self_ads", "");
    }

    public static SharedPreferences t(Context context) {
        try {
            return context.getSharedPreferences("ServerConfig", 0);
        } catch (NullPointerException e) {
            e.printStackTrace();
            return context.getSharedPreferences("ServerConfig", 0);
        }
    }

    public static int u(Context context, String str, int i) {
        String string = t(context).getString("ad_view_count", "");
        if (!string.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                JSONArray optJSONArray = jSONObject.optJSONArray("" + i);
                if (optJSONArray != null) {
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                        if (jSONObject2.has(str)) {
                            return jSONObject2.optInt(str);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public static boolean v(Context context, String str) {
        String r = r("ad_key_words_filter", "[]");
        if (!TextUtils.isEmpty(r) && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(r);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (str.contains(jSONArray.getString(i))) {
                        return true;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean w(Context context, String str, int i) {
        String string = t(context).getString("ad_click_cache", "");
        if (!string.equals("")) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                JSONArray optJSONArray = jSONObject.optJSONArray("" + i);
                if (optJSONArray != null) {
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        if (optJSONArray.get(i2).equals(str)) {
                            return true;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean x(Context context) {
        return h(context, "isMuted", 1) == 1;
    }

    public static void y(Context context, ConsentStatus consentStatus) {
        t(context).edit().putString("consent_status", consentStatus.name()).apply();
    }

    public static void z(Context context, String str) {
        if (!str.equals("")) {
            t(context).edit().putString("exitadCode", str).apply();
        }
    }
}
