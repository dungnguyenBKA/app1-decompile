package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.m;
import com.google.android.gms.ads.AdRequest;
import defpackage.yj;
import java.util.Map;
import java.util.Objects;

/* renamed from: yj  reason: default package */
public abstract class yj<T extends yj<T>> implements Cloneable {
    private boolean A;
    private int b;
    private float c = 1.0f;
    private vd d = vd.d;
    private f e = f.NORMAL;
    private Drawable f;
    private int g;
    private Drawable h;
    private int i;
    private boolean j = true;
    private int k = -1;
    private int l = -1;
    private g m = wk.c();
    private boolean n;
    private boolean o = true;
    private Drawable p;
    private int q;
    private i r = new i();
    private Map<Class<?>, m<?>> s = new zk();
    private Class<?> t = Object.class;
    private boolean u;
    private Resources.Theme v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z = true;

    private static boolean D(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    private T P() {
        if (!this.u) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    public final boolean A() {
        return this.x;
    }

    public final boolean B() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public boolean C() {
        return this.z;
    }

    public final boolean E() {
        return this.o;
    }

    public final boolean F() {
        return this.n;
    }

    public final boolean G() {
        return D(this.b, 2048);
    }

    public T H() {
        this.u = true;
        return this;
    }

    public T I() {
        return L(eh.c, new bh());
    }

    public T J() {
        T L = L(eh.b, new ch());
        L.z = true;
        return L;
    }

    public T K() {
        T L = L(eh.a, new jh());
        L.z = true;
        return L;
    }

    /* access modifiers changed from: package-private */
    public final T L(eh ehVar, m<Bitmap> mVar) {
        if (this.w) {
            return (T) clone().L(ehVar, mVar);
        }
        g(ehVar);
        return U(mVar, false);
    }

    public T M(int i2, int i3) {
        if (this.w) {
            return (T) clone().M(i2, i3);
        }
        this.l = i2;
        this.k = i3;
        this.b |= AdRequest.MAX_CONTENT_URL_LENGTH;
        P();
        return this;
    }

    public T N(Drawable drawable) {
        if (this.w) {
            return (T) clone().N(drawable);
        }
        this.h = drawable;
        int i2 = this.b | 64;
        this.b = i2;
        this.i = 0;
        this.b = i2 & -129;
        P();
        return this;
    }

    public T O(f fVar) {
        if (this.w) {
            return (T) clone().O(fVar);
        }
        Objects.requireNonNull(fVar, "Argument must not be null");
        this.e = fVar;
        this.b |= 8;
        P();
        return this;
    }

    public <Y> T Q(h<Y> hVar, Y y2) {
        if (this.w) {
            return (T) clone().Q(hVar, y2);
        }
        Objects.requireNonNull(hVar, "Argument must not be null");
        Objects.requireNonNull(y2, "Argument must not be null");
        this.r.e(hVar, y2);
        P();
        return this;
    }

    public T R(g gVar) {
        if (this.w) {
            return (T) clone().R(gVar);
        }
        Objects.requireNonNull(gVar, "Argument must not be null");
        this.m = gVar;
        this.b |= 1024;
        P();
        return this;
    }

    public T S(boolean z2) {
        if (this.w) {
            return (T) clone().S(true);
        }
        this.j = !z2;
        this.b |= 256;
        P();
        return this;
    }

    public T T(m<Bitmap> mVar) {
        return U(mVar, true);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: com.bumptech.glide.load.m<android.graphics.Bitmap> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    public T U(m<Bitmap> mVar, boolean z2) {
        if (this.w) {
            return (T) clone().U(mVar, z2);
        }
        hh hhVar = new hh(mVar, z2);
        W(Bitmap.class, mVar, z2);
        W(Drawable.class, hhVar, z2);
        W(BitmapDrawable.class, hhVar, z2);
        W(ji.class, new mi(mVar), z2);
        P();
        return this;
    }

    /* access modifiers changed from: package-private */
    public final T V(eh ehVar, m<Bitmap> mVar) {
        if (this.w) {
            return (T) clone().V(ehVar, mVar);
        }
        g(ehVar);
        return T(mVar);
    }

    /* access modifiers changed from: package-private */
    public <Y> T W(Class<Y> cls, m<Y> mVar, boolean z2) {
        if (this.w) {
            return (T) clone().W(cls, mVar, z2);
        }
        Objects.requireNonNull(cls, "Argument must not be null");
        Objects.requireNonNull(mVar, "Argument must not be null");
        this.s.put(cls, mVar);
        int i2 = this.b | 2048;
        this.b = i2;
        this.o = true;
        int i3 = i2 | 65536;
        this.b = i3;
        this.z = false;
        if (z2) {
            this.b = i3 | 131072;
            this.n = true;
        }
        P();
        return this;
    }

    public T X(boolean z2) {
        if (this.w) {
            return (T) clone().X(z2);
        }
        this.A = z2;
        this.b |= 1048576;
        P();
        return this;
    }

    public T a(yj<?> yjVar) {
        if (this.w) {
            return (T) clone().a(yjVar);
        }
        if (D(yjVar.b, 2)) {
            this.c = yjVar.c;
        }
        if (D(yjVar.b, 262144)) {
            this.x = yjVar.x;
        }
        if (D(yjVar.b, 1048576)) {
            this.A = yjVar.A;
        }
        if (D(yjVar.b, 4)) {
            this.d = yjVar.d;
        }
        if (D(yjVar.b, 8)) {
            this.e = yjVar.e;
        }
        if (D(yjVar.b, 16)) {
            this.f = yjVar.f;
            this.g = 0;
            this.b &= -33;
        }
        if (D(yjVar.b, 32)) {
            this.g = yjVar.g;
            this.f = null;
            this.b &= -17;
        }
        if (D(yjVar.b, 64)) {
            this.h = yjVar.h;
            this.i = 0;
            this.b &= -129;
        }
        if (D(yjVar.b, 128)) {
            this.i = yjVar.i;
            this.h = null;
            this.b &= -65;
        }
        if (D(yjVar.b, 256)) {
            this.j = yjVar.j;
        }
        if (D(yjVar.b, AdRequest.MAX_CONTENT_URL_LENGTH)) {
            this.l = yjVar.l;
            this.k = yjVar.k;
        }
        if (D(yjVar.b, 1024)) {
            this.m = yjVar.m;
        }
        if (D(yjVar.b, 4096)) {
            this.t = yjVar.t;
        }
        if (D(yjVar.b, 8192)) {
            this.p = yjVar.p;
            this.q = 0;
            this.b &= -16385;
        }
        if (D(yjVar.b, 16384)) {
            this.q = yjVar.q;
            this.p = null;
            this.b &= -8193;
        }
        if (D(yjVar.b, 32768)) {
            this.v = yjVar.v;
        }
        if (D(yjVar.b, 65536)) {
            this.o = yjVar.o;
        }
        if (D(yjVar.b, 131072)) {
            this.n = yjVar.n;
        }
        if (D(yjVar.b, 2048)) {
            this.s.putAll(yjVar.s);
            this.z = yjVar.z;
        }
        if (D(yjVar.b, 524288)) {
            this.y = yjVar.y;
        }
        if (!this.o) {
            this.s.clear();
            int i2 = this.b & -2049;
            this.b = i2;
            this.n = false;
            this.b = i2 & -131073;
            this.z = true;
        }
        this.b |= yjVar.b;
        this.r.d(yjVar.r);
        P();
        return this;
    }

    public T b() {
        if (!this.u || this.w) {
            this.w = true;
            return H();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    public T c() {
        return V(eh.c, new bh());
    }

    /* renamed from: d */
    public T clone() {
        try {
            T t2 = (T) ((yj) super.clone());
            i iVar = new i();
            t2.r = iVar;
            iVar.d(this.r);
            zk zkVar = new zk();
            t2.s = zkVar;
            zkVar.putAll(this.s);
            t2.u = false;
            t2.w = false;
            return t2;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public T e(Class<?> cls) {
        if (this.w) {
            return (T) clone().e(cls);
        }
        Objects.requireNonNull(cls, "Argument must not be null");
        this.t = cls;
        this.b |= 4096;
        P();
        return this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof yj)) {
            return false;
        }
        yj yjVar = (yj) obj;
        if (Float.compare(yjVar.c, this.c) == 0 && this.g == yjVar.g && hl.b(this.f, yjVar.f) && this.i == yjVar.i && hl.b(this.h, yjVar.h) && this.q == yjVar.q && hl.b(this.p, yjVar.p) && this.j == yjVar.j && this.k == yjVar.k && this.l == yjVar.l && this.n == yjVar.n && this.o == yjVar.o && this.x == yjVar.x && this.y == yjVar.y && this.d.equals(yjVar.d) && this.e == yjVar.e && this.r.equals(yjVar.r) && this.s.equals(yjVar.s) && this.t.equals(yjVar.t) && hl.b(this.m, yjVar.m) && hl.b(this.v, yjVar.v)) {
            return true;
        }
        return false;
    }

    public T f(vd vdVar) {
        if (this.w) {
            return (T) clone().f(vdVar);
        }
        Objects.requireNonNull(vdVar, "Argument must not be null");
        this.d = vdVar;
        this.b |= 4;
        P();
        return this;
    }

    public T g(eh ehVar) {
        Objects.requireNonNull(ehVar, "Argument must not be null");
        return Q((h<Y>) eh.f, ehVar);
    }

    public final vd h() {
        return this.d;
    }

    public int hashCode() {
        float f2 = this.c;
        int i2 = hl.c;
        return hl.f(this.v, hl.f(this.m, hl.f(this.t, hl.f(this.s, hl.f(this.r, hl.f(this.e, hl.f(this.d, (((((((((((((hl.f(this.p, (hl.f(this.h, (hl.f(this.f, ((Float.floatToIntBits(f2) + 527) * 31) + this.g) * 31) + this.i) * 31) + this.q) * 31) + (this.j ? 1 : 0)) * 31) + this.k) * 31) + this.l) * 31) + (this.n ? 1 : 0)) * 31) + (this.o ? 1 : 0)) * 31) + (this.x ? 1 : 0)) * 31) + (this.y ? 1 : 0))))))));
    }

    public final int i() {
        return this.g;
    }

    public final Drawable j() {
        return this.f;
    }

    public final Drawable k() {
        return this.p;
    }

    public final int l() {
        return this.q;
    }

    public final boolean m() {
        return this.y;
    }

    public final i n() {
        return this.r;
    }

    public final int p() {
        return this.k;
    }

    public final int q() {
        return this.l;
    }

    public final Drawable r() {
        return this.h;
    }

    public final int s() {
        return this.i;
    }

    public final f t() {
        return this.e;
    }

    public final Class<?> u() {
        return this.t;
    }

    public final g v() {
        return this.m;
    }

    public final float w() {
        return this.c;
    }

    public final Resources.Theme x() {
        return this.v;
    }

    public final Map<Class<?>, m<?>> y() {
        return this.s;
    }

    public final boolean z() {
        return this.A;
    }
}
