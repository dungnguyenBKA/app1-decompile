package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.zjsoft.baseadlib.b;

/* renamed from: fc0  reason: default package */
public class fc0 {
    private static fc0 a;

    private fc0() {
    }

    public static fc0 a() {
        if (a == null) {
            a = new fc0();
        }
        return a;
    }

    public void b(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (b.a) {
                Log.e("ad_log", str);
            } else if (!b.a(context)) {
                FirebaseCrashlytics.getInstance().log(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void c(Context context, Throwable th) {
        try {
            th.printStackTrace();
            if (!b.a && !b.a(context)) {
                FirebaseCrashlytics.getInstance().recordException(th);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
