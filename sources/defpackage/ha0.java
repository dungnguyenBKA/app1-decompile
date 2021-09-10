package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import androidx.core.app.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: ha0  reason: default package */
public class ha0 {
    private static WindowManager a;
    private static String[] b = {"x", "y", "width", "height"};
    static float c = Resources.getSystem().getDisplayMetrics().density;
    public static final /* synthetic */ int d = 0;

    static float a(int i) {
        return ((float) i) / c;
    }

    public static JSONObject b(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", (double) a(i));
            jSONObject.put("y", (double) a(i2));
            jSONObject.put("width", (double) a(i3));
            jSONObject.put("height", (double) a(i4));
        } catch (JSONException e) {
            b.b("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    public static void c(Context context) {
        c = context.getResources().getDisplayMetrics().density;
        a = (WindowManager) context.getSystemService("window");
    }

    public static void d(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (a != null) {
            Point point = new Point(0, 0);
            a.getDefaultDisplay().getRealSize(point);
            f2 = a(point.x);
            f = a(point.y);
        } else {
            f = 0.0f;
        }
        try {
            jSONObject.put("width", (double) f2);
            jSONObject.put("height", (double) f);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void e(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            b.b("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    public static void f(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private static boolean g(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean h(org.json.JSONObject r10, org.json.JSONObject r11) {
        /*
        // Method dump skipped, instructions count: 165
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha0.h(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
