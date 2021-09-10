package defpackage;

import com.bumptech.glide.load.g;
import defpackage.be;
import defpackage.il;
import defpackage.td;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
/* renamed from: xd  reason: default package */
public class xd<R> implements td.a<R>, il.d {
    private static final c z = new c();
    final e b = new e();
    private final ll c = ll.a();
    private final be.a d;
    private final k2<xd<?>> e;
    private final c f;
    private final yd g;
    private final lf h;
    private final lf i;
    private final lf j;
    private final lf k;
    private final AtomicInteger l = new AtomicInteger();
    private g m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private he<?> r;
    com.bumptech.glide.load.a s;
    private boolean t;
    ce u;
    private boolean v;
    be<?> w;
    private td<R> x;
    private volatile boolean y;

    /* access modifiers changed from: private */
    /* renamed from: xd$a */
    public class a implements Runnable {
        private final dk b;

        a(dk dkVar) {
            this.b = dkVar;
        }

        public void run() {
            synchronized (((ek) this.b).f()) {
                synchronized (xd.this) {
                    if (xd.this.b.b(this.b)) {
                        xd xdVar = xd.this;
                        dk dkVar = this.b;
                        Objects.requireNonNull(xdVar);
                        try {
                            ((ek) dkVar).l(xdVar.u);
                        } catch (Throwable th) {
                            throw new nd(th);
                        }
                    }
                    xd.this.c();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: xd$b */
    public class b implements Runnable {
        private final dk b;

        b(dk dkVar) {
            this.b = dkVar;
        }

        public void run() {
            synchronized (((ek) this.b).f()) {
                synchronized (xd.this) {
                    if (xd.this.b.b(this.b)) {
                        xd.this.w.b();
                        xd xdVar = xd.this;
                        dk dkVar = this.b;
                        Objects.requireNonNull(xdVar);
                        try {
                            ((ek) dkVar).n(xdVar.w, xdVar.s);
                            xd.this.k(this.b);
                        } catch (Throwable th) {
                            throw new nd(th);
                        }
                    }
                    xd.this.c();
                }
            }
        }
    }

    /* renamed from: xd$c */
    static class c {
        c() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: xd$d */
    public static final class d {
        final dk a;
        final Executor b;

        d(dk dkVar, Executor executor) {
            this.a = dkVar;
            this.b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    xd(lf lfVar, lf lfVar2, lf lfVar3, lf lfVar4, yd ydVar, be.a aVar, k2<xd<?>> k2Var) {
        c cVar = z;
        this.h = lfVar;
        this.i = lfVar2;
        this.j = lfVar3;
        this.k = lfVar4;
        this.g = ydVar;
        this.d = aVar;
        this.e = k2Var;
        this.f = cVar;
    }

    private boolean f() {
        return this.v || this.t || this.y;
    }

    private synchronized void j() {
        if (this.m != null) {
            this.b.clear();
            this.m = null;
            this.w = null;
            this.r = null;
            this.v = false;
            this.y = false;
            this.t = false;
            this.x.o(false);
            this.x = null;
            this.u = null;
            this.s = null;
            this.e.a(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(dk dkVar, Executor executor) {
        this.c.c();
        this.b.a(dkVar, executor);
        boolean z2 = true;
        if (this.t) {
            d(1);
            executor.execute(new b(dkVar));
        } else if (this.v) {
            d(1);
            executor.execute(new a(dkVar));
        } else {
            if (this.y) {
                z2 = false;
            }
            androidx.core.app.b.i(z2, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    @Override // defpackage.il.d
    public ll b() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        be<?> beVar;
        synchronized (this) {
            this.c.c();
            androidx.core.app.b.i(f(), "Not yet complete!");
            int decrementAndGet = this.l.decrementAndGet();
            androidx.core.app.b.i(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                beVar = this.w;
                j();
            } else {
                beVar = null;
            }
        }
        if (beVar != null) {
            beVar.g();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void d(int i2) {
        be<?> beVar;
        androidx.core.app.b.i(f(), "Not yet complete!");
        if (this.l.getAndAdd(i2) == 0 && (beVar = this.w) != null) {
            beVar.b();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized xd<R> e(g gVar, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.m = gVar;
        this.n = z2;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        return this;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0033, code lost:
        ((defpackage.wd) r3.g).f(r3, r0, null);
        r4 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0043, code lost:
        if (r4.hasNext() == false) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0045, code lost:
        r0 = r4.next();
        r0.b.execute(new defpackage.xd.a(r3, r0.a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0058, code lost:
        c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void g(defpackage.ce r4) {
        /*
        // Method dump skipped, instructions count: 116
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xd.g(ce):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: he<R> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        ((defpackage.wd) r6.g).f(r6, r7, r0);
        r7 = r8.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0061, code lost:
        if (r7.hasNext() == false) goto L_0x0076;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0063, code lost:
        r8 = r7.next();
        r8.b.execute(new defpackage.xd.b(r6, r8.a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0076, code lost:
        c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void h(defpackage.he<R> r7, com.bumptech.glide.load.a r8) {
        /*
        // Method dump skipped, instructions count: 146
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xd.h(he, com.bumptech.glide.load.a):void");
    }

    /* access modifiers changed from: package-private */
    public boolean i() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public synchronized void k(dk dkVar) {
        this.c.c();
        this.b.d(dkVar);
        if (this.b.isEmpty()) {
            boolean z2 = true;
            if (!f()) {
                this.y = true;
                this.x.e();
                ((wd) this.g).e(this, this.m);
            }
            if (!this.t) {
                if (!this.v) {
                    z2 = false;
                }
            }
            if (z2 && this.l.get() == 0) {
                j();
            }
        }
    }

    public void l(td<?> tdVar) {
        lf lfVar;
        if (this.o) {
            lfVar = this.j;
        } else {
            lfVar = this.p ? this.k : this.i;
        }
        lfVar.execute(tdVar);
    }

    public synchronized void m(td<R> tdVar) {
        lf lfVar;
        this.x = tdVar;
        if (tdVar.t()) {
            lfVar = this.h;
        } else if (this.o) {
            lfVar = this.j;
        } else {
            lfVar = this.p ? this.k : this.i;
        }
        lfVar.execute(tdVar);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: xd$e */
    public static final class e implements Iterable<d> {
        private final List<d> b;

        e() {
            this.b = new ArrayList(2);
        }

        /* access modifiers changed from: package-private */
        public void a(dk dkVar, Executor executor) {
            this.b.add(new d(dkVar, executor));
        }

        /* access modifiers changed from: package-private */
        public boolean b(dk dkVar) {
            return this.b.contains(new d(dkVar, cl.a()));
        }

        /* access modifiers changed from: package-private */
        public e c() {
            return new e(new ArrayList(this.b));
        }

        /* access modifiers changed from: package-private */
        public void clear() {
            this.b.clear();
        }

        /* access modifiers changed from: package-private */
        public void d(dk dkVar) {
            this.b.remove(new d(dkVar, cl.a()));
        }

        /* access modifiers changed from: package-private */
        public boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.lang.Iterable
        public Iterator<d> iterator() {
            return this.b.iterator();
        }

        /* access modifiers changed from: package-private */
        public int size() {
            return this.b.size();
        }

        e(List<d> list) {
            this.b = list;
        }
    }
}
