package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.AdSDKNotificationListener;
import com.zjsoft.baseadlib.b;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: yb0  reason: default package */
public class yb0 {
    private static yb0 f;
    private int a = -1;
    private int b = -1;
    private int c = -1;
    private int d = -1;
    private int e = -1;

    private yb0() {
    }

    private void f(Context context) {
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 1;
        this.e = 1;
        String r = cc0.r("ad_analytics", "");
        if (!TextUtils.isEmpty(r)) {
            try {
                JSONObject jSONObject = new JSONObject(r);
                this.a = jSONObject.optInt("request", 0);
                this.b = jSONObject.optInt("loaded", 0);
                this.c = jSONObject.optInt(AdSDKNotificationListener.IMPRESSION_EVENT, 0);
                this.d = jSONObject.optInt("click", 1);
                this.e = jSONObject.optInt("failed", 1);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static synchronized yb0 g() {
        yb0 yb0;
        synchronized (yb0.class) {
            if (f == null) {
                f = new yb0();
            }
            yb0 = f;
        }
        return yb0;
    }

    public boolean a(Context context) {
        if (this.d == -1) {
            f(context);
        }
        return this.d != 0;
    }

    public boolean b(Context context) {
        if (this.e == -1) {
            f(context);
        }
        return this.e == 1;
    }

    public boolean c(Context context) {
        if (this.c == -1) {
            f(context);
        }
        return this.c == 1;
    }

    public boolean d(Context context) {
        if (this.b == -1) {
            f(context);
        }
        return this.b == 1;
    }

    public boolean e(Context context) {
        if (this.a == -1) {
            f(context);
        }
        return this.a == 1;
    }

    public void h(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (b.a) {
                Log.e("ad_log", str + "-" + str2);
            }
            gc0.a(context, "ad_android", new String[]{"ad_position", "ad_event"}, new String[]{str, str2});
        }
    }
}
