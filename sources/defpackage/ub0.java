package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.facebook.ads.AdSDKNotificationListener;

/* renamed from: ub0  reason: default package */
public abstract class ub0 {
    public Object a = new Object();

    /* renamed from: ub0$a */
    public interface a {
        void a(Context context, View view);

        void b(Context context);

        void c(Context context);

        void d(Activity activity, kb0 kb0);

        void e(Context context);
    }

    public abstract void a(Activity activity);

    public abstract String b();

    /* access modifiers changed from: protected */
    public String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() < 5) {
            return str;
        }
        return str.substring(str.length() - 5);
    }

    public abstract void d(Activity activity, lb0 lb0, a aVar);

    public void e(Context context) {
        if (context != null && yb0.g().a(context)) {
            yb0.g().h(context, b(), "click");
        }
    }

    public void f(Context context, String str) {
        if (context != null && yb0.g().b(context)) {
            yb0 g = yb0.g();
            String b = b();
            g.h(context, b, "failed:" + str);
        }
    }

    public void g(Context context) {
        if (context != null && yb0.g().c(context)) {
            yb0.g().h(context, b(), AdSDKNotificationListener.IMPRESSION_EVENT);
        }
    }

    public void h(Context context) {
        if (context != null && yb0.g().d(context)) {
            yb0.g().h(context, b(), "loaded");
        }
    }

    public void i(Context context) {
        if (context != null && yb0.g().e(context)) {
            yb0.g().h(context, b(), "request");
        }
    }
}
