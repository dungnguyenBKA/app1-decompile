package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.firebase.c;
import com.google.firebase.installations.h;
import defpackage.h50;
import defpackage.i50;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class f implements g {
    private static final Object m = new Object();
    private static final ThreadFactory n = new a();
    private final c a;
    private final l50 b;
    private final h50 c;
    private final o d;
    private final g50 e;
    private final m f;
    private final Object g = new Object();
    private final ExecutorService h;
    private final ExecutorService i;
    private String j;
    private Set<e50> k = new HashSet();
    private final List<n> l = new ArrayList();

    class a implements ThreadFactory {
        private final AtomicInteger b = new AtomicInteger(1);

        a() {
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.b.getAndIncrement())));
        }
    }

    f(c cVar, d50<y50> d50, d50<a50> d502) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        ThreadFactory threadFactory = n;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30, timeUnit, linkedBlockingQueue, threadFactory);
        l50 l50 = new l50(cVar.g(), d50, d502);
        h50 h50 = new h50(cVar);
        o c2 = o.c();
        g50 g50 = new g50(cVar);
        m mVar = new m();
        this.a = cVar;
        this.b = l50;
        this.c = h50;
        this.d = c2;
        this.e = g50;
        this.f = mVar;
        this.h = threadPoolExecutor;
        this.i = new ThreadPoolExecutor(0, 1, 30, timeUnit, new LinkedBlockingQueue(), threadFactory);
    }

    /* access modifiers changed from: private */
    public final void b(boolean z) {
        i50 b2;
        synchronized (m) {
            b a2 = b.a(this.a.g(), "generatefid.lock");
            try {
                b2 = this.c.b();
                if (b2.i()) {
                    String l2 = l(b2);
                    h50 h50 = this.c;
                    i50.a k2 = b2.k();
                    k2.d(l2);
                    k2.g(h50.a.UNREGISTERED);
                    b2 = k2.a();
                    h50.a(b2);
                }
            } finally {
                if (a2 != null) {
                    a2.b();
                }
            }
        }
        if (z) {
            i50.a k3 = b2.k();
            k3.b(null);
            b2 = k3.a();
        }
        o(b2);
        this.i.execute(e.a(this, z));
    }

    private i50 c(i50 i50) {
        o50 b2 = this.b.b(d(), i50.c(), g(), i50.e());
        int ordinal = b2.b().ordinal();
        if (ordinal == 0) {
            String c2 = b2.c();
            long d2 = b2.d();
            long b3 = this.d.b();
            i50.a k2 = i50.k();
            k2.b(c2);
            k2.c(d2);
            k2.h(b3);
            return k2.a();
        } else if (ordinal == 1) {
            i50.a k3 = i50.k();
            k3.e("BAD CONFIG");
            k3.g(h50.a.REGISTER_ERROR);
            return k3.a();
        } else if (ordinal == 2) {
            synchronized (this) {
                this.j = null;
            }
            i50.a k4 = i50.k();
            k4.g(h50.a.NOT_GENERATED);
            return k4.a();
        } else {
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
    }

    public static f f() {
        c h2 = c.h();
        n.b(true, "Null is not a valid value of FirebaseApp.");
        return (f) h2.f(g.class);
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0046 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void h(com.google.firebase.installations.f r4, boolean r5) {
        /*
        // Method dump skipped, instructions count: 229
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.f.h(com.google.firebase.installations.f, boolean):void");
    }

    private void k() {
        n.f(e(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        n.f(g(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        n.f(d(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        String e2 = e();
        int i2 = o.e;
        n.b(e2.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        n.b(o.e(d()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    private String l(i50 i50) {
        if (this.a.i().equals("CHIME_ANDROID_SDK") || this.a.q()) {
            if (i50.f() == h50.a.ATTEMPT_MIGRATION) {
                String a2 = this.e.a();
                return TextUtils.isEmpty(a2) ? this.f.a() : a2;
            }
        }
        return this.f.a();
    }

    private i50 m(i50 i50) {
        m50 a2 = this.b.a(d(), i50.c(), g(), e(), (i50.c() == null || i50.c().length() != 11) ? null : this.e.c());
        int ordinal = a2.d().ordinal();
        if (ordinal == 0) {
            String b2 = a2.b();
            String c2 = a2.c();
            long b3 = this.d.b();
            String c3 = a2.a().c();
            long d2 = a2.a().d();
            i50.a k2 = i50.k();
            k2.d(b2);
            k2.g(h50.a.REGISTERED);
            k2.b(c3);
            k2.f(c2);
            k2.c(d2);
            k2.h(b3);
            return k2.a();
        } else if (ordinal == 1) {
            i50.a k3 = i50.k();
            k3.e("BAD CONFIG");
            k3.g(h50.a.REGISTER_ERROR);
            return k3.a();
        } else {
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
    }

    private void n(Exception exc) {
        synchronized (this.g) {
            Iterator<n> it = this.l.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void o(i50 i50) {
        synchronized (this.g) {
            Iterator<n> it = this.l.iterator();
            while (it.hasNext()) {
                if (it.next().b(i50)) {
                    it.remove();
                }
            }
        }
    }

    @Override // com.google.firebase.installations.g
    public kw<l> a(boolean z) {
        k();
        lw lwVar = new lw();
        j jVar = new j(this.d, lwVar);
        synchronized (this.g) {
            this.l.add(jVar);
        }
        kw<l> a2 = lwVar.a();
        this.h.execute(d.a(this, z));
        return a2;
    }

    /* access modifiers changed from: package-private */
    public String d() {
        return this.a.j().b();
    }

    /* access modifiers changed from: package-private */
    public String e() {
        return this.a.j().c();
    }

    /* access modifiers changed from: package-private */
    public String g() {
        return this.a.j().e();
    }

    @Override // com.google.firebase.installations.g
    public kw<String> getId() {
        String str;
        k();
        synchronized (this) {
            str = this.j;
        }
        if (str != null) {
            return nw.d(str);
        }
        lw lwVar = new lw();
        k kVar = new k(lwVar);
        synchronized (this.g) {
            this.l.add(kVar);
        }
        kw<String> a2 = lwVar.a();
        this.h.execute(c.a(this));
        return a2;
    }
}
