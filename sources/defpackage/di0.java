package defpackage;

import defpackage.ci0;
import defpackage.eh0;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Objects;

/* renamed from: di0  reason: default package */
public final class di0 {
    public final kg0 a;
    private ci0.a b;
    private nh0 c;
    private final tg0 d;
    public final og0 e;
    public final zg0 f;
    private final Object g;
    private final ci0 h;
    private int i;
    private zh0 j;
    private boolean k;
    private boolean l;
    private boolean m;
    private gi0 n;

    /* renamed from: di0$a */
    public static final class a extends WeakReference<di0> {
        public final Object a;

        a(di0 di0, Object obj) {
            super(di0);
            this.a = obj;
        }
    }

    public di0(tg0 tg0, kg0 kg0, og0 og0, zg0 zg0, Object obj) {
        this.d = tg0;
        this.a = kg0;
        this.e = og0;
        this.f = zg0;
        this.h = new ci0(kg0, ph0.a.j(tg0), og0, zg0);
        this.g = obj;
    }

    private Socket e(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (z3) {
            this.n = null;
        }
        if (z2) {
            this.l = true;
        }
        zh0 zh0 = this.j;
        if (zh0 == null) {
            return null;
        }
        if (z) {
            zh0.k = true;
        }
        if (this.n != null) {
            return null;
        }
        if (!(this.l || zh0.k)) {
            return null;
        }
        int size = zh0.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (zh0.n.get(i2).get() == this) {
                zh0.n.remove(i2);
                if (this.j.n.isEmpty()) {
                    this.j.o = System.nanoTime();
                    if (ph0.a.e(this.d, this.j)) {
                        socket = this.j.n();
                        this.j = null;
                        return socket;
                    }
                }
                socket = null;
                this.j = null;
                return socket;
            }
        }
        throw new IllegalStateException();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0133, code lost:
        if (r7.j(r24) != false) goto L_0x013a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x013a, code lost:
        return r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.zh0 f(int r19, int r20, int r21, int r22, boolean r23, boolean r24) {
        /*
        // Method dump skipped, instructions count: 361
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.di0.f(int, int, int, int, boolean, boolean):zh0");
    }

    public void a(zh0 zh0, boolean z) {
        if (this.j == null) {
            this.j = zh0;
            this.k = z;
            zh0.n.add(new a(this, this.g));
            return;
        }
        throw new IllegalStateException();
    }

    public void b() {
        gi0 gi0;
        zh0 zh0;
        synchronized (this.d) {
            this.m = true;
            gi0 = this.n;
            zh0 = this.j;
        }
        if (gi0 != null) {
            gi0.cancel();
        } else if (zh0 != null) {
            zh0.c();
        }
    }

    public gi0 c() {
        gi0 gi0;
        synchronized (this.d) {
            gi0 = this.n;
        }
        return gi0;
    }

    public synchronized zh0 d() {
        return this.j;
    }

    public boolean g() {
        ci0.a aVar;
        return this.c != null || ((aVar = this.b) != null && aVar.b()) || this.h.b();
    }

    public gi0 h(gh0 gh0, eh0.a aVar, boolean z) {
        ji0 ji0 = (ji0) aVar;
        try {
            gi0 l2 = f(ji0.b(), ji0.h(), ji0.k(), gh0.l(), gh0.r(), z).l(gh0, ji0, this);
            synchronized (this.d) {
                this.n = l2;
            }
            return l2;
        } catch (IOException e2) {
            throw new bi0(e2);
        }
    }

    public void i() {
        zh0 zh0;
        Socket e2;
        synchronized (this.d) {
            zh0 = this.j;
            e2 = e(true, false, false);
            if (this.j != null) {
                zh0 = null;
            }
        }
        rh0.h(e2);
        if (zh0 != null) {
            Objects.requireNonNull(this.f);
        }
    }

    public void j() {
        zh0 zh0;
        Socket e2;
        synchronized (this.d) {
            zh0 = this.j;
            e2 = e(false, true, false);
            if (this.j != null) {
                zh0 = null;
            }
        }
        rh0.h(e2);
        if (zh0 != null) {
            ph0.a.k(this.e, null);
            Objects.requireNonNull(this.f);
            Objects.requireNonNull(this.f);
        }
    }

    public Socket k(zh0 zh0) {
        if (this.n == null && this.j.n.size() == 1) {
            Socket e2 = e(true, false, false);
            this.j = zh0;
            zh0.n.add(this.j.n.get(0));
            return e2;
        }
        throw new IllegalStateException();
    }

    public nh0 l() {
        return this.c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0051  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m(java.io.IOException r7) {
        /*
        // Method dump skipped, instructions count: 102
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.di0.m(java.io.IOException):void");
    }

    public void n(boolean z, gi0 gi0, long j2, IOException iOException) {
        zh0 zh0;
        Socket e2;
        boolean z2;
        Objects.requireNonNull(this.f);
        synchronized (this.d) {
            if (gi0 != null) {
                if (gi0 == this.n) {
                    if (!z) {
                        this.j.l++;
                    }
                    zh0 = this.j;
                    e2 = e(z, false, true);
                    if (this.j != null) {
                        zh0 = null;
                    }
                    z2 = this.l;
                }
            }
            throw new IllegalStateException("expected " + this.n + " but was " + gi0);
        }
        rh0.h(e2);
        if (zh0 != null) {
            Objects.requireNonNull(this.f);
        }
        if (iOException != null) {
            ph0.a.k(this.e, iOException);
            Objects.requireNonNull(this.f);
        } else if (z2) {
            ph0.a.k(this.e, null);
            Objects.requireNonNull(this.f);
        }
    }

    public String toString() {
        zh0 d2 = d();
        return d2 != null ? d2.toString() : this.a.toString();
    }
}
