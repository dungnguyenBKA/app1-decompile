package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.e;
import com.bumptech.glide.f;
import defpackage.wd;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* renamed from: ek  reason: default package */
public final class ek<R> implements zj, mk, dk {
    private static final boolean D = Log.isLoggable("Request", 2);
    private int A;
    private boolean B;
    private RuntimeException C;
    private final String a;
    private final ll b;
    private final Object c;
    private final bk<R> d;
    private final ak e;
    private final Context f;
    private final e g;
    private final Object h;
    private final Class<R> i;
    private final yj<?> j;
    private final int k;
    private final int l;
    private final f m;
    private final nk<R> n;
    private final List<bk<R>> o;
    private final tk<? super R> p;
    private final Executor q;
    private he<R> r;
    private wd.d s;
    private long t;
    private volatile wd u;
    private a v;
    private Drawable w;
    private Drawable x;
    private Drawable y;
    private int z;

    /* access modifiers changed from: private */
    /* renamed from: ek$a */
    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private ek(Context context, e eVar, Object obj, Object obj2, Class<R> cls, yj<?> yjVar, int i2, int i3, f fVar, nk<R> nkVar, bk<R> bkVar, List<bk<R>> list, ak akVar, wd wdVar, tk<? super R> tkVar, Executor executor) {
        this.a = D ? String.valueOf(hashCode()) : null;
        this.b = ll.a();
        this.c = obj;
        this.f = context;
        this.g = eVar;
        this.h = obj2;
        this.i = cls;
        this.j = yjVar;
        this.k = i2;
        this.l = i3;
        this.m = fVar;
        this.n = nkVar;
        this.d = bkVar;
        this.o = list;
        this.e = akVar;
        this.u = wdVar;
        this.p = tkVar;
        this.q = executor;
        this.v = a.PENDING;
        if (this.C == null && eVar.i()) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    private void d() {
        if (this.B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    private Drawable e() {
        if (this.y == null) {
            Drawable k2 = this.j.k();
            this.y = k2;
            if (k2 == null && this.j.l() > 0) {
                this.y = j(this.j.l());
            }
        }
        return this.y;
    }

    private Drawable g() {
        if (this.x == null) {
            Drawable r2 = this.j.r();
            this.x = r2;
            if (r2 == null && this.j.s() > 0) {
                this.x = j(this.j.s());
            }
        }
        return this.x;
    }

    private boolean i() {
        ak akVar = this.e;
        return akVar == null || !akVar.getRoot().b();
    }

    private Drawable j(int i2) {
        return zh.a(this.g, i2, this.j.x() != null ? this.j.x() : this.f.getTheme());
    }

    public static <R> ek<R> k(Context context, e eVar, Object obj, Object obj2, Class<R> cls, yj<?> yjVar, int i2, int i3, f fVar, nk<R> nkVar, bk<R> bkVar, List<bk<R>> list, ak akVar, wd wdVar, tk<? super R> tkVar, Executor executor) {
        return new ek<>(context, eVar, obj, obj2, cls, yjVar, i2, i3, fVar, nkVar, bkVar, list, akVar, wdVar, tkVar, executor);
    }

    /* JADX INFO: finally extract failed */
    private void m(ce ceVar, int i2) {
        boolean z2;
        this.b.c();
        synchronized (this.c) {
            Objects.requireNonNull(ceVar);
            int g2 = this.g.g();
            if (g2 <= i2) {
                Log.w("Glide", "Load failed for " + this.h + " with size [" + this.z + "x" + this.A + "]", ceVar);
                if (g2 <= 4) {
                    ceVar.e("Glide");
                }
            }
            this.s = null;
            this.v = a.FAILED;
            boolean z3 = true;
            this.B = true;
            try {
                List<bk<R>> list = this.o;
                if (list != null) {
                    z2 = false;
                    for (bk<R> bkVar : list) {
                        z2 |= bkVar.a(ceVar, this.h, this.n, i());
                    }
                } else {
                    z2 = false;
                }
                bk<R> bkVar2 = this.d;
                if (bkVar2 == null || !bkVar2.a(ceVar, this.h, this.n, i())) {
                    z3 = false;
                }
                if (!z2 && !z3) {
                    p();
                }
                this.B = false;
                ak akVar = this.e;
                if (akVar != null) {
                    akVar.a(this);
                }
            } catch (Throwable th) {
                this.B = false;
                throw th;
            }
        }
    }

    /* JADX INFO: finally extract failed */
    private void o(he<R> heVar, R r2, com.bumptech.glide.load.a aVar) {
        boolean z2;
        boolean i2 = i();
        this.v = a.COMPLETE;
        this.r = heVar;
        if (this.g.g() <= 3) {
            StringBuilder q2 = ic.q("Finished loading ");
            q2.append(r2.getClass().getSimpleName());
            q2.append(" from ");
            q2.append(aVar);
            q2.append(" for ");
            q2.append(this.h);
            q2.append(" with size [");
            q2.append(this.z);
            q2.append("x");
            q2.append(this.A);
            q2.append("] in ");
            q2.append(dl.a(this.t));
            q2.append(" ms");
            q2.toString();
        }
        boolean z3 = true;
        this.B = true;
        try {
            List<bk<R>> list = this.o;
            if (list != null) {
                z2 = false;
                for (bk<R> bkVar : list) {
                    z2 |= bkVar.b(r2, this.h, this.n, aVar, i2);
                }
            } else {
                z2 = false;
            }
            bk<R> bkVar2 = this.d;
            if (bkVar2 == null || !bkVar2.b(r2, this.h, this.n, aVar, i2)) {
                z3 = false;
            }
            if (!z3 && !z2) {
                this.n.b(r2, this.p.a(aVar, i2));
            }
            this.B = false;
            ak akVar = this.e;
            if (akVar != null) {
                akVar.e(this);
            }
        } catch (Throwable th) {
            this.B = false;
            throw th;
        }
    }

    private void p() {
        ak akVar = this.e;
        if (akVar == null || akVar.c(this)) {
            Drawable drawable = null;
            if (this.h == null) {
                drawable = e();
            }
            if (drawable == null) {
                if (this.w == null) {
                    Drawable j2 = this.j.j();
                    this.w = j2;
                    if (j2 == null && this.j.i() > 0) {
                        this.w = j(this.j.i());
                    }
                }
                drawable = this.w;
            }
            if (drawable == null) {
                drawable = g();
            }
            this.n.d(drawable);
        }
    }

    @Override // defpackage.mk
    public void a(int i2, int i3) {
        Object obj;
        Throwable th;
        int i4;
        int i5 = i2;
        this.b.c();
        Object obj2 = this.c;
        synchronized (obj2) {
            try {
                boolean z2 = D;
                if (z2) {
                    dl.a(this.t);
                }
                if (this.v == a.WAITING_FOR_SIZE) {
                    a aVar = a.RUNNING;
                    this.v = aVar;
                    float w2 = this.j.w();
                    if (i5 != Integer.MIN_VALUE) {
                        i5 = Math.round(((float) i5) * w2);
                    }
                    this.z = i5;
                    if (i3 == Integer.MIN_VALUE) {
                        i4 = i3;
                    } else {
                        i4 = Math.round(w2 * ((float) i3));
                    }
                    this.A = i4;
                    if (z2) {
                        dl.a(this.t);
                    }
                    obj = obj2;
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                        while (true) {
                            try {
                                break;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        throw th;
                    }
                    try {
                        this.s = this.u.b(this.g, this.h, this.j.v(), this.z, this.A, this.j.u(), this.i, this.m, this.j.h(), this.j.y(), this.j.F(), this.j.C(), this.j.n(), this.j.B(), this.j.A(), this.j.z(), this.j.m(), this, this.q);
                        if (this.v != aVar) {
                            this.s = null;
                        }
                        if (z2) {
                            dl.a(this.t);
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        while (true) {
                            break;
                        }
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                obj = obj2;
                while (true) {
                    break;
                }
                throw th;
            }
        }
    }

    @Override // defpackage.zj
    public boolean b() {
        boolean z2;
        synchronized (this.c) {
            z2 = this.v == a.CLEARED;
        }
        return z2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0082  */
    @Override // defpackage.zj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ek.c():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004d, code lost:
        if (r3 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004f, code lost:
        r5.u.h(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0041  */
    @Override // defpackage.zj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void clear() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.c
            monitor-enter(r0)
            r5.d()     // Catch:{ all -> 0x0055 }
            ll r1 = r5.b     // Catch:{ all -> 0x0055 }
            r1.c()     // Catch:{ all -> 0x0055 }
            ek$a r1 = r5.v     // Catch:{ all -> 0x0055 }
            ek$a r2 = defpackage.ek.a.CLEARED     // Catch:{ all -> 0x0055 }
            if (r1 != r2) goto L_0x0013
            monitor-exit(r0)     // Catch:{ all -> 0x0055 }
            return
        L_0x0013:
            r5.d()     // Catch:{ all -> 0x0055 }
            ll r1 = r5.b     // Catch:{ all -> 0x0055 }
            r1.c()     // Catch:{ all -> 0x0055 }
            nk<R> r1 = r5.n     // Catch:{ all -> 0x0055 }
            r1.a(r5)     // Catch:{ all -> 0x0055 }
            wd$d r1 = r5.s     // Catch:{ all -> 0x0055 }
            r3 = 0
            if (r1 == 0) goto L_0x002a
            r1.a()     // Catch:{ all -> 0x0055 }
            r5.s = r3     // Catch:{ all -> 0x0055 }
        L_0x002a:
            he<R> r1 = r5.r     // Catch:{ all -> 0x0055 }
            if (r1 == 0) goto L_0x0031
            r5.r = r3     // Catch:{ all -> 0x0055 }
            r3 = r1
        L_0x0031:
            ak r1 = r5.e     // Catch:{ all -> 0x0055 }
            if (r1 == 0) goto L_0x003e
            boolean r1 = r1.f(r5)     // Catch:{ all -> 0x0055 }
            if (r1 == 0) goto L_0x003c
            goto L_0x003e
        L_0x003c:
            r1 = 0
            goto L_0x003f
        L_0x003e:
            r1 = 1
        L_0x003f:
            if (r1 == 0) goto L_0x004a
            nk<R> r1 = r5.n     // Catch:{ all -> 0x0055 }
            android.graphics.drawable.Drawable r4 = r5.g()     // Catch:{ all -> 0x0055 }
            r1.g(r4)     // Catch:{ all -> 0x0055 }
        L_0x004a:
            r5.v = r2     // Catch:{ all -> 0x0055 }
            monitor-exit(r0)     // Catch:{ all -> 0x0055 }
            if (r3 == 0) goto L_0x0054
            wd r0 = r5.u
            r0.h(r3)
        L_0x0054:
            return
        L_0x0055:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ek.clear():void");
    }

    public Object f() {
        this.b.c();
        return this.c;
    }

    public boolean h(zj zjVar) {
        int i2;
        int i3;
        Object obj;
        Class<R> cls;
        yj<?> yjVar;
        f fVar;
        int size;
        int i4;
        int i5;
        Object obj2;
        Class<R> cls2;
        yj<?> yjVar2;
        f fVar2;
        int size2;
        boolean z2;
        if (!(zjVar instanceof ek)) {
            return false;
        }
        synchronized (this.c) {
            i2 = this.k;
            i3 = this.l;
            obj = this.h;
            cls = this.i;
            yjVar = this.j;
            fVar = this.m;
            List<bk<R>> list = this.o;
            size = list != null ? list.size() : 0;
        }
        ek ekVar = (ek) zjVar;
        synchronized (ekVar.c) {
            i4 = ekVar.k;
            i5 = ekVar.l;
            obj2 = ekVar.h;
            cls2 = ekVar.i;
            yjVar2 = ekVar.j;
            fVar2 = ekVar.m;
            List<bk<R>> list2 = ekVar.o;
            size2 = list2 != null ? list2.size() : 0;
        }
        if (i2 == i4 && i3 == i5) {
            int i6 = hl.c;
            if (obj == null) {
                z2 = obj2 == null;
            } else if (obj instanceof xf) {
                z2 = ((xf) obj).a(obj2);
            } else {
                z2 = obj.equals(obj2);
            }
            return z2 && cls.equals(cls2) && yjVar.equals(yjVar2) && fVar == fVar2 && size == size2;
        }
    }

    @Override // defpackage.zj
    public boolean isComplete() {
        boolean z2;
        synchronized (this.c) {
            z2 = this.v == a.COMPLETE;
        }
        return z2;
    }

    @Override // defpackage.zj
    public boolean isRunning() {
        boolean z2;
        synchronized (this.c) {
            a aVar = this.v;
            if (aVar != a.RUNNING) {
                if (aVar != a.WAITING_FOR_SIZE) {
                    z2 = false;
                }
            }
            z2 = true;
        }
        return z2;
    }

    public void l(ce ceVar) {
        m(ceVar, 5);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: ek<R> */
    /* JADX WARN: Multi-variable type inference failed */
    public void n(he<?> heVar, com.bumptech.glide.load.a aVar) {
        Throwable th;
        this.b.c();
        try {
            synchronized (this.c) {
                try {
                    this.s = null;
                    if (heVar == null) {
                        m(new ce("Expected to receive a Resource<R> with an object of " + this.i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = heVar.get();
                    if (obj != null) {
                        if (this.i.isAssignableFrom(obj.getClass())) {
                            ak akVar = this.e;
                            if (!(akVar == null || akVar.d(this))) {
                                try {
                                    this.r = null;
                                    this.v = a.COMPLETE;
                                    this.u.h(heVar);
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            } else {
                                o(heVar, obj, aVar);
                                return;
                            }
                        }
                    }
                    this.r = null;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Expected to receive an object of ");
                    sb.append(this.i);
                    sb.append(" but instead got ");
                    sb.append(obj != null ? obj.getClass() : "");
                    sb.append("{");
                    sb.append(obj);
                    sb.append("} inside Resource{");
                    sb.append(heVar);
                    sb.append("}.");
                    sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                    m(new ce(sb.toString()), 5);
                    this.u.h(heVar);
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            }
        } catch (Throwable th4) {
            if (0 != 0) {
                this.u.h(null);
            }
            throw th4;
        }
    }

    @Override // defpackage.zj
    public void pause() {
        synchronized (this.c) {
            if (isRunning()) {
                clear();
            }
        }
    }
}
