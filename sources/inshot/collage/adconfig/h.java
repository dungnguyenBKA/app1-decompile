package inshot.collage.adconfig;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.ads.ADRequestList;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.io.File;
import java.util.HashMap;
import java.util.Objects;

@SuppressLint({"StaticFieldLeak"})
public final class h {
    private static final HashMap<i, b> a = new HashMap<>();
    private static final long b;
    private static final long c;
    private static boolean d;
    private static final Handler e = new a(Looper.getMainLooper());
    private static c f;
    public static final h g = new h();

    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            pb0 a;
            gg0.e(message, "msg");
            try {
                if (a.b()) {
                    boolean z = true;
                    try {
                        Context context = a.a;
                        if (context != null) {
                            int h = cc0.h(context, "AD_AvailableSpace", 50);
                            File externalStorageDirectory = Environment.getExternalStorageDirectory();
                            gg0.d(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
                            StatFs statFs = new StatFs(externalStorageDirectory.getAbsolutePath());
                            if (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong() < ((long) (h * 1024 * 1024))) {
                                z = false;
                            }
                            if (z) {
                                i iVar = i.values()[message.what];
                                h hVar = h.g;
                                if (h.d) {
                                    o.a("CardAd", "handleMessage hasPaused type = " + iVar);
                                }
                                b bVar = (b) h.a.get(iVar);
                                if (!(bVar == null || (a = bVar.a()) == null)) {
                                    a.g(a.d());
                                }
                                b bVar2 = new b(iVar);
                                h.a.put(iVar, bVar2);
                                hVar.h(a.d(), bVar2);
                                return;
                            }
                            return;
                        }
                        gg0.j("context");
                        throw null;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
                FirebaseCrashlytics.getInstance().recordException(th);
            }
        }
    }

    /* access modifiers changed from: private */
    public static final class b {
        private View a;
        private pb0 b;
        private tb0 c;
        private long d;
        private long e;
        private i f;

        public b(i iVar) {
            gg0.e(iVar, "type");
            this.f = iVar;
        }

        public final pb0 a() {
            return this.b;
        }

        public final tb0 b() {
            return this.c;
        }

        public final long c() {
            return this.e;
        }

        public final long d() {
            return this.d;
        }

        public final i e() {
            return this.f;
        }

        public final View f() {
            return this.a;
        }

        public final void g(pb0 pb0) {
            this.b = pb0;
        }

        public final void h(tb0 tb0) {
            this.c = tb0;
        }

        public final void i(long j) {
            this.e = j;
        }

        public final void j(long j) {
            this.d = j;
        }

        public final void k(View view) {
            this.a = view;
        }
    }

    public interface c {
        void a(i iVar);
    }

    public static final class d implements tb0 {
        private i a;

        d(b bVar) {
            this.a = bVar.e();
        }

        @Override // defpackage.tb0
        public void a(Context context, View view) {
            gg0.e(context, "context");
            gg0.e(view, "view");
            o.a("CardAd", "onAdLoad type = " + this.a);
            h hVar = h.g;
            b bVar = (b) h.a.get(this.a);
            if (bVar != null) {
                bVar.k(view);
            }
            c cVar = h.f;
            if (cVar != null) {
                cVar.a(this.a);
            }
        }

        @Override // defpackage.sb0
        public void b(Context context) {
            gg0.e(context, "context");
        }

        @Override // defpackage.sb0
        public void c(Context context, kb0 kb0) {
            gg0.e(context, "context");
            gg0.e(kb0, "message");
            o.a("CardAd", "onAdLoadFailed type = " + this.a + ", error = " + kb0);
            h hVar = h.g;
            h.a.remove(this.a);
            if (!h.d) {
                h.e.removeMessages(this.a.ordinal());
                h.e.sendEmptyMessageDelayed(this.a.ordinal(), h.c);
            }
        }
    }

    static {
        Context context = a.a;
        if (context != null) {
            b = (long) cc0.h(context, "AD_cardRefreshInterval", 45000);
            Context context2 = a.a;
            if (context2 != null) {
                c = (long) cc0.h(context2, "AD_cardFailRefreshInterval", 10000);
                return;
            }
            gg0.j("context");
            throw null;
        }
        gg0.j("context");
        throw null;
    }

    private h() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void h(Activity activity, b bVar) {
        try {
            o.a("CardAd", "loadAd type = " + bVar.e());
            if (activity != null) {
                if (!d) {
                    bVar.h(new d(bVar));
                    ADRequestList aDRequestList = new ADRequestList(bVar.b());
                    e.d(activity, aDRequestList, bVar.e());
                    bVar.g(new pb0(activity, aDRequestList, false));
                    o.a("CardAd", "loadAd adRequestList: " + aDRequestList.size());
                    return;
                }
            }
            o.a("CardAd", "loadAd fail, type = " + bVar.e() + ", error: activity == null || hasPaused");
            a.remove(bVar.e());
        } catch (Exception e2) {
            FirebaseCrashlytics.getInstance().recordException(e2);
            o.a("CardAd", "loadAd Exception: " + e2.getMessage());
        }
    }

    public final void g(i iVar) {
        View f2;
        gg0.e(iVar, "type");
        b bVar = a.get(iVar);
        if (bVar != null && (f2 = bVar.f()) != null && (f2.getParent() instanceof ViewGroup)) {
            ViewParent parent = f2.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(f2);
        }
    }

    public final void i() {
        i[] values = i.values();
        for (int i = 0; i < 3; i++) {
            b bVar = a.get(values[i]);
            if (bVar != null) {
                View f2 = bVar.f();
                if (f2 != null && (f2.getParent() instanceof ViewGroup)) {
                    ViewParent parent = f2.getParent();
                    Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeView(f2);
                }
                pb0 a2 = bVar.a();
                if (a2 != null) {
                    a2.g(a.d());
                }
            }
        }
        d = true;
        a.clear();
        e.removeCallbacksAndMessages(null);
    }

    public final void j(i iVar) {
        gg0.e(iVar, "type");
        o.a("CardAd", "onPause type = " + iVar);
        d = true;
        e.removeCallbacksAndMessages(null);
        b bVar = a.get(iVar);
        if (bVar != null && bVar.c() != 0) {
            bVar.j((System.currentTimeMillis() - bVar.c()) + bVar.d());
            bVar.i(0);
        }
    }

    public final void k(i iVar, FrameLayout frameLayout) {
        gg0.e(iVar, "type");
        o.a("CardAd", "onResume type = " + iVar);
        d = false;
        b bVar = a.get(iVar);
        if (bVar == null) {
            Handler handler = e;
            handler.removeMessages(iVar.ordinal());
            handler.sendEmptyMessage(iVar.ordinal());
        } else if (bVar.f() != null) {
            if (frameLayout != null) {
                n(frameLayout, iVar);
            }
            if (bVar.d() != 0) {
                Handler handler2 = e;
                handler2.removeMessages(iVar.ordinal());
                long max = Math.max(1000L, b - bVar.d());
                o.a("CardAd", "sendEmptyMessageDelayed type = " + iVar + ", time = " + max);
                handler2.sendEmptyMessageDelayed(iVar.ordinal(), max);
            }
        }
    }

    public final void l(i iVar) {
        gg0.e(iVar, "type");
        boolean z = false;
        d = false;
        if (a.b() && a.d() != null) {
            try {
                Context context = a.a;
                if (context != null) {
                    int h = cc0.h(context, "AD_AvailableSpace", 50);
                    File externalStorageDirectory = Environment.getExternalStorageDirectory();
                    gg0.d(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
                    StatFs statFs = new StatFs(externalStorageDirectory.getAbsolutePath());
                    if (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong() >= ((long) (h * 1024 * 1024))) {
                        z = true;
                    }
                    if (z) {
                        HashMap<i, b> hashMap = a;
                        if (hashMap.get(iVar) == null) {
                            b bVar = new b(iVar);
                            hashMap.put(iVar, bVar);
                            h(a.d(), bVar);
                            return;
                        }
                        return;
                    }
                    return;
                }
                gg0.j("context");
                throw null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void m(c cVar) {
        f = cVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean n(android.widget.FrameLayout r9, inshot.collage.adconfig.i r10) {
        /*
        // Method dump skipped, instructions count: 266
        */
        throw new UnsupportedOperationException("Method not decompiled: inshot.collage.adconfig.h.n(android.widget.FrameLayout, inshot.collage.adconfig.i):boolean");
    }
}
