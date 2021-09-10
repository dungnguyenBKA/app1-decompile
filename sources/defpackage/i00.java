package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import defpackage.j10;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: i00  reason: default package */
public class i00 {
    private final Context a;
    private final n00 b;
    private final long c = System.currentTimeMillis();
    private j00 d;
    private j00 e;
    private boolean f;
    private zz g;
    private final t00 h;
    private final kz i;
    private final dz j;
    private final ExecutorService k;
    private final tz l;
    private final zy m;

    /* access modifiers changed from: package-private */
    /* renamed from: i00$a */
    public class a implements Callable<kw<Void>> {
        final /* synthetic */ l30 b;

        a(l30 l30) {
            this.b = l30;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public kw<Void> call() {
            return i00.this.i(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: i00$b */
    public class b implements Runnable {
        final /* synthetic */ l30 b;

        b(l30 l30) {
            this.b = l30;
        }

        public void run() {
            i00.this.i(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: i00$c */
    public class c implements Callable<Boolean> {
        c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            try {
                boolean d = i00.this.d.d();
                if (!d) {
                    az.f().i("Initialization marker file was not properly removed.");
                }
                return Boolean.valueOf(d);
            } catch (Exception e) {
                az.f().e("Problem encountered deleting Crashlytics initialization marker.", e);
                return Boolean.FALSE;
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: i00$d */
    public class d implements Callable<Boolean> {
        d() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            return Boolean.valueOf(i00.this.g.m());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: i00$e */
    public static final class e implements j10.b {
        private final c30 a;

        public e(c30 c30) {
            this.a = c30;
        }

        @Override // defpackage.j10.b
        public File a() {
            File file = new File(this.a.a(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    public i00(com.google.firebase.c cVar, t00 t00, zy zyVar, n00 n00, kz kzVar, dz dzVar, ExecutorService executorService) {
        this.b = n00;
        this.a = cVar.g();
        this.h = t00;
        this.m = zyVar;
        this.i = kzVar;
        this.j = dzVar;
        this.k = executorService;
        this.l = new tz(executorService);
    }

    private void d() {
        try {
            this.f = Boolean.TRUE.equals((Boolean) h10.a(this.l.d(new d())));
        } catch (Exception unused) {
            this.f = false;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private kw<Void> i(l30 l30) {
        p();
        try {
            this.i.a(h00.b(this));
            k30 k30 = (k30) l30;
            if (!k30.l().a().a) {
                az.f().b("Collection of crash reports disabled in Crashlytics settings.");
                return nw.c(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.g.r()) {
                az.f().i("Previous sessions could not be finalized.");
            }
            kw<Void> z = this.g.z(k30.j());
            o();
            return z;
        } catch (Exception e2) {
            az.f().e("Crashlytics encountered a problem during asynchronous initialization.", e2);
            return nw.c(e2);
        } finally {
            o();
        }
    }

    private void k(l30 l30) {
        Future<?> submit = this.k.submit(new b(l30));
        az.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            az.f().e("Crashlytics was interrupted during initialization.", e2);
        } catch (ExecutionException e3) {
            az.f().e("Crashlytics encountered a problem during initialization.", e3);
        } catch (TimeoutException e4) {
            az.f().e("Crashlytics timed out during initialization.", e4);
        }
    }

    static boolean l(String str, boolean z) {
        if (!z) {
            az.f().h("Configured not to require a build ID.");
            return true;
        } else if (!TextUtils.isEmpty(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        }
    }

    public kw<Boolean> e() {
        return this.g.k();
    }

    public kw<Void> f() {
        return this.g.l();
    }

    public boolean g() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public boolean h() {
        return this.d.c();
    }

    public kw<Void> j(l30 l30) {
        return h10.b(this.k, new a(l30));
    }

    public void m(String str) {
        this.g.B(System.currentTimeMillis() - this.c, str);
    }

    public void n(Throwable th) {
        this.g.A(Thread.currentThread(), th);
    }

    /* access modifiers changed from: package-private */
    public void o() {
        this.l.d(new c());
    }

    /* access modifiers changed from: package-private */
    public void p() {
        this.l.b();
        this.d.a();
        az.f().h("Initialization marker file was created.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x00ca A[Catch:{ Exception -> 0x00e1 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean q(defpackage.mz r27, defpackage.l30 r28) {
        /*
        // Method dump skipped, instructions count: 247
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i00.q(mz, l30):boolean");
    }

    public kw<Void> r() {
        return this.g.w();
    }

    public void s(Boolean bool) {
        this.b.d(bool);
    }

    public void t(String str, String str2) {
        this.g.x(str, str2);
    }

    public void u(String str) {
        this.g.y(str);
    }
}
