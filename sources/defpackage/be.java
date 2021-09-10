package defpackage;

import com.bumptech.glide.load.g;
import java.util.Objects;

/* renamed from: be  reason: default package */
class be<Z> implements he<Z> {
    private final boolean b;
    private final boolean c;
    private final he<Z> d;
    private final a e;
    private final g f;
    private int g;
    private boolean h;

    /* renamed from: be$a */
    interface a {
        void a(g gVar, be<?> beVar);
    }

    be(he<Z> heVar, boolean z, boolean z2, g gVar, a aVar) {
        Objects.requireNonNull(heVar, "Argument must not be null");
        this.d = heVar;
        this.b = z;
        this.c = z2;
        this.f = gVar;
        Objects.requireNonNull(aVar, "Argument must not be null");
        this.e = aVar;
    }

    @Override // defpackage.he
    public synchronized void a() {
        if (this.g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (!this.h) {
            this.h = true;
            if (this.c) {
                this.d.a();
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void b() {
        if (!this.h) {
            this.g++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // defpackage.he
    public int c() {
        return this.d.c();
    }

    @Override // defpackage.he
    public Class<Z> d() {
        return this.d.d();
    }

    /* access modifiers changed from: package-private */
    public he<Z> e() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public void g() {
        boolean z;
        synchronized (this) {
            int i = this.g;
            if (i > 0) {
                z = true;
                int i2 = i - 1;
                this.g = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.e.a(this.f, this);
        }
    }

    @Override // defpackage.he
    public Z get() {
        return this.d.get();
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.b + ", listener=" + this.e + ", key=" + this.f + ", acquired=" + this.g + ", isRecycled=" + this.h + ", resource=" + this.d + '}';
    }
}
