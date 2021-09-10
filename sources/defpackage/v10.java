package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: v10  reason: default package */
public final class v10 extends i20.d.c {
    private final int a;
    private final String b;
    private final int c;
    private final long d;
    private final long e;
    private final boolean f;
    private final int g;
    private final String h;
    private final String i;

    /* access modifiers changed from: package-private */
    /* renamed from: v10$b */
    public static final class b extends i20.d.c.a {
        private Integer a;
        private String b;
        private Integer c;
        private Long d;
        private Long e;
        private Boolean f;
        private Integer g;
        private String h;
        private String i;

        b() {
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c a() {
            String str = this.a == null ? " arch" : "";
            if (this.b == null) {
                str = ic.i(str, " model");
            }
            if (this.c == null) {
                str = ic.i(str, " cores");
            }
            if (this.d == null) {
                str = ic.i(str, " ram");
            }
            if (this.e == null) {
                str = ic.i(str, " diskSpace");
            }
            if (this.f == null) {
                str = ic.i(str, " simulator");
            }
            if (this.g == null) {
                str = ic.i(str, " state");
            }
            if (this.h == null) {
                str = ic.i(str, " manufacturer");
            }
            if (this.i == null) {
                str = ic.i(str, " modelClass");
            }
            if (str.isEmpty()) {
                return new v10(this.a.intValue(), this.b, this.c.intValue(), this.d.longValue(), this.e.longValue(), this.f.booleanValue(), this.g.intValue(), this.h, this.i, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a b(int i2) {
            this.a = Integer.valueOf(i2);
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a c(int i2) {
            this.c = Integer.valueOf(i2);
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a d(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a e(String str) {
            Objects.requireNonNull(str, "Null manufacturer");
            this.h = str;
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a f(String str) {
            Objects.requireNonNull(str, "Null model");
            this.b = str;
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a g(String str) {
            Objects.requireNonNull(str, "Null modelClass");
            this.i = str;
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a h(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a i(boolean z) {
            this.f = Boolean.valueOf(z);
            return this;
        }

        @Override // defpackage.i20.d.c.a
        public i20.d.c.a j(int i2) {
            this.g = Integer.valueOf(i2);
            return this;
        }
    }

    v10(int i2, String str, int i3, long j, long j2, boolean z, int i4, String str2, String str3, a aVar) {
        this.a = i2;
        this.b = str;
        this.c = i3;
        this.d = j;
        this.e = j2;
        this.f = z;
        this.g = i4;
        this.h = str2;
        this.i = str3;
    }

    @Override // defpackage.i20.d.c
    public int b() {
        return this.a;
    }

    @Override // defpackage.i20.d.c
    public int c() {
        return this.c;
    }

    @Override // defpackage.i20.d.c
    public long d() {
        return this.e;
    }

    @Override // defpackage.i20.d.c
    public String e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.c)) {
            return false;
        }
        i20.d.c cVar = (i20.d.c) obj;
        if (this.a == cVar.b() && this.b.equals(cVar.f()) && this.c == cVar.c() && this.d == cVar.h() && this.e == cVar.d() && this.f == cVar.j() && this.g == cVar.i() && this.h.equals(cVar.e()) && this.i.equals(cVar.g())) {
            return true;
        }
        return false;
    }

    @Override // defpackage.i20.d.c
    public String f() {
        return this.b;
    }

    @Override // defpackage.i20.d.c
    public String g() {
        return this.i;
    }

    @Override // defpackage.i20.d.c
    public long h() {
        return this.d;
    }

    public int hashCode() {
        long j = this.d;
        long j2 = this.e;
        return ((((((((((((((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.g) * 1000003) ^ this.h.hashCode()) * 1000003) ^ this.i.hashCode();
    }

    @Override // defpackage.i20.d.c
    public int i() {
        return this.g;
    }

    @Override // defpackage.i20.d.c
    public boolean j() {
        return this.f;
    }

    public String toString() {
        StringBuilder q = ic.q("Device{arch=");
        q.append(this.a);
        q.append(", model=");
        q.append(this.b);
        q.append(", cores=");
        q.append(this.c);
        q.append(", ram=");
        q.append(this.d);
        q.append(", diskSpace=");
        q.append(this.e);
        q.append(", simulator=");
        q.append(this.f);
        q.append(", state=");
        q.append(this.g);
        q.append(", manufacturer=");
        q.append(this.h);
        q.append(", modelClass=");
        return ic.l(q, this.i, "}");
    }
}
