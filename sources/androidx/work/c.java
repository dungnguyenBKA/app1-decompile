package androidx.work;

import android.os.Build;

public final class c {
    public static final c i = new a().a();
    private i a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private long f;
    private long g;
    private d h;

    public static final class a {
        i a = i.NOT_REQUIRED;
        d b = new d();

        public c a() {
            return new c(this);
        }

        public a b(i iVar) {
            this.a = iVar;
            return this;
        }
    }

    public c() {
        this.a = i.NOT_REQUIRED;
        this.f = -1;
        this.g = -1;
        this.h = new d();
    }

    public d a() {
        return this.h;
    }

    public i b() {
        return this.a;
    }

    public long c() {
        return this.f;
    }

    public long d() {
        return this.g;
    }

    public boolean e() {
        return this.h.c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.b == cVar.b && this.c == cVar.c && this.d == cVar.d && this.e == cVar.e && this.f == cVar.f && this.g == cVar.g && this.a == cVar.a) {
            return this.h.equals(cVar.h);
        }
        return false;
    }

    public boolean f() {
        return this.d;
    }

    public boolean g() {
        return this.b;
    }

    public boolean h() {
        return this.c;
    }

    public int hashCode() {
        long j = this.f;
        long j2 = this.g;
        return this.h.hashCode() + (((((((((((((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public boolean i() {
        return this.e;
    }

    public void j(d dVar) {
        this.h = dVar;
    }

    public void k(i iVar) {
        this.a = iVar;
    }

    public void l(boolean z) {
        this.d = z;
    }

    public void m(boolean z) {
        this.b = z;
    }

    public void n(boolean z) {
        this.c = z;
    }

    public void o(boolean z) {
        this.e = z;
    }

    public void p(long j) {
        this.f = j;
    }

    public void q(long j) {
        this.g = j;
    }

    c(a aVar) {
        this.a = i.NOT_REQUIRED;
        this.f = -1;
        this.g = -1;
        this.h = new d();
        this.b = false;
        int i2 = Build.VERSION.SDK_INT;
        this.c = false;
        this.a = aVar.a;
        this.d = false;
        this.e = false;
        if (i2 >= 24) {
            this.h = aVar.b;
            this.f = -1;
            this.g = -1;
        }
    }

    public c(c cVar) {
        this.a = i.NOT_REQUIRED;
        this.f = -1;
        this.g = -1;
        this.h = new d();
        this.b = cVar.b;
        this.c = cVar.c;
        this.a = cVar.a;
        this.d = cVar.d;
        this.e = cVar.e;
        this.h = cVar.h;
    }
}
