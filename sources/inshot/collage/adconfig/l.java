package inshot.collage.adconfig;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import java.util.Objects;

public final class l {
    private static HashMap<j, ob0> a = new HashMap<>();
    private static boolean b;
    private static final int c;
    private static final boolean d;
    private static final a e = new a(Looper.getMainLooper());
    public static final l f = new l();

    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            gg0.e(message, "msg");
            if (a.d() != null) {
                l lVar = l.f;
                j jVar = j.values()[message.what];
                Object obj = message.obj;
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                lVar.f(jVar, ((Boolean) obj).booleanValue());
            }
        }
    }

    static {
        Context context = a.a;
        if (context != null) {
            c = cc0.h(context, "AD_interstitialFailRefreshInterval", 10000);
            Context context2 = a.a;
            if (context2 != null) {
                d = cc0.g(context2, "AD_enableCommonResultAndPicker", false);
                return;
            }
            gg0.j("context");
            throw null;
        }
        gg0.j("context");
        throw null;
    }

    private l() {
    }

    public final void e() {
        b = true;
        e.removeCallbacksAndMessages(null);
        for (ob0 ob0 : a.values()) {
            ob0.j(a.d());
        }
        a.clear();
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0086  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void f(inshot.collage.adconfig.j r14, boolean r15) {
        /*
        // Method dump skipped, instructions count: 440
        */
        throw new UnsupportedOperationException("Method not decompiled: inshot.collage.adconfig.l.f(inshot.collage.adconfig.j, boolean):void");
    }

    public final void g() {
        b = true;
        e.removeCallbacksAndMessages(null);
    }

    public final void h(j jVar) {
        gg0.e(jVar, "type");
        gg0.e(jVar, "type");
        o.a("FullAd", "onResume, type = " + jVar);
        b = false;
        if (!a.containsKey(jVar)) {
            a aVar = e;
            Message obtainMessage = aVar.obtainMessage(jVar.ordinal());
            obtainMessage.obj = Boolean.FALSE;
            aVar.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x016e, code lost:
        if ((java.lang.System.currentTimeMillis() - r8) > ((long) ((r0 * 60) * com.facebook.ads.AdError.NETWORK_ERROR_CODE))) goto L_0x017d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0180  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x01a0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean i(android.app.Activity r13, inshot.collage.adconfig.j r14) {
        /*
        // Method dump skipped, instructions count: 510
        */
        throw new UnsupportedOperationException("Method not decompiled: inshot.collage.adconfig.l.i(android.app.Activity, inshot.collage.adconfig.j):boolean");
    }
}
