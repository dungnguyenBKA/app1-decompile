package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import defpackage.j10;
import defpackage.m00;
import defpackage.sz;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* access modifiers changed from: package-private */
/* renamed from: zz  reason: default package */
public class zz {
    static final FilenameFilter t = xz.a();
    private final Context a;
    private final n00 b;
    private final j00 c;
    private final e10 d;
    private final tz e;
    private final t00 f;
    private final c30 g;
    private final mz h;
    private final j10.b i;
    private final j10 j;
    private final zy k;
    private final String l;
    private final dz m;
    private final c10 n;
    private m00 o;
    final lw<Boolean> p = new lw<>();
    final lw<Boolean> q = new lw<>();
    final lw<Void> r = new lw<>();
    final AtomicBoolean s = new AtomicBoolean(false);

    /* renamed from: zz$a */
    class a implements m00.a {
        a() {
        }
    }

    /* renamed from: zz$b */
    class b implements Callable<kw<Void>> {
        final /* synthetic */ Date b;
        final /* synthetic */ Throwable c;
        final /* synthetic */ Thread d;
        final /* synthetic */ l30 e;

        b(Date date, Throwable th, Thread thread, l30 l30) {
            this.b = date;
            this.c = th;
            this.d = thread;
            this.e = l30;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public kw<Void> call() {
            long time = this.b.getTime() / 1000;
            String s = zz.this.s();
            if (s == null) {
                az.f().d("Tried to write a fatal exception while no session was open.");
                return nw.d(null);
            }
            zz.this.c.a();
            zz.this.n.i(this.c, this.d, s, time);
            zz.this.p(this.b.getTime());
            zz.this.n();
            zz.g(zz.this);
            if (!zz.this.b.c()) {
                return nw.d(null);
            }
            Executor c2 = zz.this.e.c();
            return ((k30) this.e).j().o(c2, new a00(this, c2));
        }
    }

    /* renamed from: zz$c */
    class c implements jw<Boolean, Void> {
        final /* synthetic */ kw a;

        c(kw kwVar) {
            this.a = kwVar;
        }

        /* Return type fixed from 'kw' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.jw
        public kw<Void> a(Boolean bool) {
            return zz.this.e.e(new d00(this, bool));
        }
    }

    /* renamed from: zz$d */
    class d implements Callable<Void> {
        final /* synthetic */ long b;
        final /* synthetic */ String c;

        d(long j, String str) {
            this.b = j;
            this.c = str;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            if (zz.this.v()) {
                return null;
            }
            zz.this.j.e(this.b, this.c);
            return null;
        }
    }

    /* renamed from: zz$e */
    class e implements Runnable {
        final /* synthetic */ Date b;
        final /* synthetic */ Throwable c;
        final /* synthetic */ Thread d;

        e(Date date, Throwable th, Thread thread) {
            this.b = date;
            this.c = th;
            this.d = thread;
        }

        public void run() {
            if (!zz.this.v()) {
                long time = this.b.getTime() / 1000;
                String s = zz.this.s();
                if (s == null) {
                    az.f().i("Tried to write a non-fatal exception while no session was open.");
                } else {
                    zz.this.n.j(this.c, this.d, s, time);
                }
            }
        }
    }

    zz(Context context, tz tzVar, t00 t00, n00 n00, c30 c30, j00 j00, mz mzVar, e10 e10, j10 j10, j10.b bVar, c10 c10, zy zyVar, dz dzVar) {
        this.a = context;
        this.e = tzVar;
        this.f = t00;
        this.b = n00;
        this.g = c30;
        this.c = j00;
        this.h = mzVar;
        this.d = e10;
        this.j = j10;
        this.i = bVar;
        this.k = zyVar;
        this.l = mzVar.g.a();
        this.m = dzVar;
        this.n = c10;
    }

    static void g(zz zzVar) {
        Objects.requireNonNull(zzVar);
        long time = new Date().getTime() / 1000;
        String rzVar = new rz(zzVar.f).toString();
        az f2 = az.f();
        f2.b("Opening a new session with ID " + rzVar);
        zzVar.k.h(rzVar);
        zzVar.k.d(rzVar, String.format(Locale.US, "Crashlytics Android SDK/%s", "17.4.0"), time);
        String b2 = zzVar.f.b();
        mz mzVar = zzVar.h;
        zzVar.k.f(rzVar, b2, mzVar.e, mzVar.f, zzVar.f.c(), (zzVar.h.c != null ? o00.APP_STORE : o00.DEVELOPER).a(), zzVar.l);
        zzVar.k.g(rzVar, Build.VERSION.RELEASE, Build.VERSION.CODENAME, sz.m(zzVar.a));
        Context context = zzVar.a;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        zzVar.k.c(rzVar, sz.a.a().ordinal(), Build.MODEL, Runtime.getRuntime().availableProcessors(), sz.j(), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), sz.l(context), sz.f(context), Build.MANUFACTURER, Build.PRODUCT);
        zzVar.j.d(rzVar);
        zzVar.n.g(rzVar, time);
    }

    static kw j(zz zzVar) {
        boolean z;
        kw kwVar;
        Objects.requireNonNull(zzVar);
        ArrayList arrayList = new ArrayList();
        File[] listFiles = zzVar.t().listFiles(t);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        for (File file : listFiles) {
            try {
                long parseLong = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    z = true;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    az.f().i("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
                    kwVar = nw.d(null);
                } else {
                    az.f().b("Logging app exception event to Firebase Analytics");
                    kwVar = nw.b(new ScheduledThreadPoolExecutor(1), new yz(zzVar, parseLong));
                }
                arrayList.add(kwVar);
            } catch (NumberFormatException unused2) {
                az f2 = az.f();
                StringBuilder q2 = ic.q("Could not parse app exception timestamp from file ");
                q2.append(file.getName());
                f2.i(q2.toString());
            }
            file.delete();
        }
        return nw.e(arrayList);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r13v0, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    private void o(boolean z) {
        ArrayList arrayList = (ArrayList) this.n.f();
        if (arrayList.size() <= z) {
            az.f().h("No open sessions to be closed.");
            return;
        }
        String str = (String) arrayList.get(z ? 1 : 0);
        if (this.k.e(str)) {
            az f2 = az.f();
            f2.h("Finalizing native report for session " + str);
            cz b2 = this.k.b(str);
            File d2 = b2.d();
            if (d2 == null || !d2.exists()) {
                az f3 = az.f();
                f3.i("No minidump data found for session " + str);
            } else {
                long lastModified = d2.lastModified();
                j10 j10 = new j10(this.a, this.i, str);
                File file = new File(new File(t(), "native-sessions"), str);
                if (!file.mkdirs()) {
                    az.f().i("Couldn't create directory to store native session files, aborting.");
                } else {
                    p(lastModified);
                    File t2 = t();
                    byte[] b3 = j10.b();
                    x00 x00 = new x00(t2);
                    File b4 = x00.b(str);
                    File a2 = x00.a(str);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new qz("logs_file", "logs", b3));
                    arrayList2.add(new s00("crash_meta_file", "metadata", b2.f()));
                    arrayList2.add(new s00("session_meta_file", "session", b2.e()));
                    arrayList2.add(new s00("app_meta_file", "app", b2.a()));
                    arrayList2.add(new s00("device_meta_file", "device", b2.c()));
                    arrayList2.add(new s00("os_meta_file", "os", b2.b()));
                    arrayList2.add(new s00("minidump_file", "minidump", b2.d()));
                    arrayList2.add(new s00("user_meta_file", "user", b4));
                    arrayList2.add(new s00("keys_file", "keys", a2));
                    z00.b(file, arrayList2);
                    this.n.c(str, arrayList2);
                    j10.a();
                }
            }
            if (!this.k.a(str)) {
                az f4 = az.f();
                f4.i("Could not finalize native session: " + str);
            }
        }
        String str2 = null;
        if (z != 0) {
            str2 = (String) arrayList.get(0);
        }
        this.n.d(new Date().getTime() / 1000, str2);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void p(long j2) {
        try {
            File t2 = t();
            new File(t2, ".ae" + j2).createNewFile();
        } catch (IOException e2) {
            az.f().j("Could not create app exception marker file.", e2);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private String s() {
        ArrayList arrayList = (ArrayList) this.n.f();
        if (!arrayList.isEmpty()) {
            return (String) arrayList.get(0);
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void A(Thread thread, Throwable th) {
        Date date = new Date();
        tz tzVar = this.e;
        tzVar.d(new uz(tzVar, new e(date, th, thread)));
    }

    /* access modifiers changed from: package-private */
    public void B(long j2, String str) {
        this.e.d(new d(j2, str));
    }

    /* access modifiers changed from: package-private */
    public kw<Boolean> k() {
        if (this.s.compareAndSet(false, true)) {
            return this.p.a();
        }
        az.f().i("checkForUnsentReports should only be called once per execution.");
        return nw.d(Boolean.FALSE);
    }

    /* access modifiers changed from: package-private */
    public kw<Void> l() {
        this.q.e(Boolean.FALSE);
        return this.r.a();
    }

    /* access modifiers changed from: package-private */
    public boolean m() {
        if (!this.c.c()) {
            String s2 = s();
            if (s2 == null || !this.k.e(s2)) {
                return false;
            }
            return true;
        }
        az.f().h("Found previous crash marker.");
        this.c.d();
        return true;
    }

    /* access modifiers changed from: package-private */
    public void n() {
        o(false);
    }

    /* access modifiers changed from: package-private */
    public void q(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, l30 l30) {
        this.e.d(new g00(this));
        m00 m00 = new m00(new a(), l30, uncaughtExceptionHandler);
        this.o = m00;
        Thread.setDefaultUncaughtExceptionHandler(m00);
    }

    /* access modifiers changed from: package-private */
    public boolean r() {
        this.e.b();
        if (v()) {
            az.f().i("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        az.f().h("Finalizing previously open sessions.");
        try {
            o(true);
            az.f().h("Closed all previously open sessions.");
            return true;
        } catch (Exception e2) {
            az.f().e("Unable to finalize previously open sessions.", e2);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public File t() {
        return this.g.a();
    }

    /* access modifiers changed from: package-private */
    public synchronized void u(l30 l30, Thread thread, Throwable th) {
        az f2 = az.f();
        f2.b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        try {
            h10.a(this.e.e(new b(new Date(), th, thread, l30)));
        } catch (Exception e2) {
            az.f().e("Error handling uncaught exception", e2);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean v() {
        m00 m00 = this.o;
        return m00 != null && m00.a();
    }

    /* access modifiers changed from: package-private */
    public kw<Void> w() {
        this.q.e(Boolean.TRUE);
        return this.r.a();
    }

    /* access modifiers changed from: package-private */
    public void x(String str, String str2) {
        try {
            this.d.f(str, str2);
            this.e.d(new f00(this, this.d.c()));
        } catch (IllegalArgumentException e2) {
            Context context = this.a;
            if (context != null) {
                if ((context.getApplicationInfo().flags & 2) != 0) {
                    throw e2;
                }
            }
            az.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    /* access modifiers changed from: package-private */
    public void y(String str) {
        this.d.h(str);
        this.e.d(new e00(this, this.d));
    }

    /* access modifiers changed from: package-private */
    public kw<Void> z(kw<p30> kwVar) {
        kw kwVar2;
        if (!this.n.e()) {
            az.f().h("No crash reports are available to be sent.");
            this.p.e(Boolean.FALSE);
            return nw.d(null);
        }
        az.f().h("Crash reports are available to be sent.");
        if (this.b.c()) {
            az.f().b("Automatic data collection is enabled. Allowing upload.");
            this.p.e(Boolean.FALSE);
            kwVar2 = nw.d(Boolean.TRUE);
        } else {
            az.f().b("Automatic data collection is disabled.");
            az.f().h("Notifying that unsent reports are available.");
            this.p.e(Boolean.TRUE);
            kw<TContinuationResult> n2 = this.b.e().n(new b00(this));
            az.f().b("Waiting for send/deleteUnsentReports to be called.");
            kw<Boolean> a2 = this.q.a();
            int i2 = h10.b;
            lw lwVar = new lw();
            g10 g10 = new g10(lwVar);
            n2.f(g10);
            a2.f(g10);
            kwVar2 = lwVar.a();
        }
        return kwVar2.n(new c(kwVar));
    }
}
