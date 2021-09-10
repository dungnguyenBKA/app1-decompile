package defpackage;

import android.content.Context;
import android.os.Build;
import com.vungle.warren.InitCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.error.VungleException;

/* renamed from: ad0  reason: default package */
public class ad0 {
    public static final String a = wc0.class.getName();
    public static final String b = zc0.class.getName();
    private static boolean c = false;
    private static boolean d = false;

    /* access modifiers changed from: package-private */
    /* renamed from: ad0$a */
    public class a implements InitCallback {
        final /* synthetic */ Context a;
        final /* synthetic */ yc0 b;

        a(Context context, yc0 yc0) {
            this.a = context;
            this.b = yc0;
        }

        @Override // com.vungle.warren.InitCallback
        public void onAutoCacheAdAvailable(String str) {
        }

        @Override // com.vungle.warren.InitCallback
        public void onError(VungleException vungleException) {
            boolean unused = ad0.c = false;
            fc0.a().c(this.a, vungleException);
            yc0 yc0 = this.b;
            if (yc0 != null) {
                yc0.a(false);
            }
        }

        @Override // com.vungle.warren.InitCallback
        public void onSuccess() {
            boolean unused = ad0.c = false;
            boolean unused2 = ad0.d = true;
            fc0.a().b(this.a, "Vungle init success");
            yc0 yc0 = this.b;
            if (yc0 != null) {
                yc0.a(true);
            }
        }
    }

    public static synchronized void c(Context context, String str, yc0 yc0) {
        synchronized (ad0.class) {
            if (!c) {
                c = true;
                if (d) {
                    c = false;
                    yc0.a(true);
                } else if (Build.VERSION.SDK_INT < 23) {
                    c = false;
                    yc0.a(false);
                } else {
                    try {
                        Vungle.init(str, context.getApplicationContext(), new a(context, yc0));
                    } catch (Throwable th) {
                        c = false;
                        fc0.a().c(context, th);
                        yc0.a(false);
                    }
                }
            }
        }
    }
}
