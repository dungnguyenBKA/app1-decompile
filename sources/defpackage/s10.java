package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: s10  reason: default package */
public final class s10 extends i20.d {
    private final String a;
    private final String b;
    private final long c;
    private final Long d;
    private final boolean e;
    private final i20.d.a f;
    private final i20.d.f g;
    private final i20.d.e h;
    private final i20.d.c i;
    private final j20<i20.d.AbstractC0101d> j;
    private final int k;

    /* access modifiers changed from: package-private */
    /* renamed from: s10$b */
    public static final class b extends i20.d.b {
        private String a;
        private String b;
        private Long c;
        private Long d;
        private Boolean e;
        private i20.d.a f;
        private i20.d.f g;
        private i20.d.e h;
        private i20.d.c i;
        private j20<i20.d.AbstractC0101d> j;
        private Integer k;

        b() {
        }

        @Override // defpackage.i20.d.b
        public i20.d a() {
            String str = this.a == null ? " generator" : "";
            if (this.b == null) {
                str = ic.i(str, " identifier");
            }
            if (this.c == null) {
                str = ic.i(str, " startedAt");
            }
            if (this.e == null) {
                str = ic.i(str, " crashed");
            }
            if (this.f == null) {
                str = ic.i(str, " app");
            }
            if (this.k == null) {
                str = ic.i(str, " generatorType");
            }
            if (str.isEmpty()) {
                return new s10(this.a, this.b, this.c.longValue(), this.d, this.e.booleanValue(), this.f, this.g, this.h, this.i, this.j, this.k.intValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.b
        public i20.d.b b(i20.d.a aVar) {
            this.f = aVar;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b c(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b d(i20.d.c cVar) {
            this.i = cVar;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b e(Long l) {
            this.d = l;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b f(j20<i20.d.AbstractC0101d> j20) {
            this.j = j20;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b g(String str) {
            Objects.requireNonNull(str, "Null generator");
            this.a = str;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b h(int i2) {
            this.k = Integer.valueOf(i2);
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b i(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.b = str;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b k(i20.d.e eVar) {
            this.h = eVar;
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b l(long j2) {
            this.c = Long.valueOf(j2);
            return this;
        }

        @Override // defpackage.i20.d.b
        public i20.d.b m(i20.d.f fVar) {
            this.g = fVar;
            return this;
        }

        b(i20.d dVar, a aVar) {
            this.a = dVar.f();
            this.b = dVar.h();
            this.c = Long.valueOf(dVar.j());
            this.d = dVar.d();
            this.e = Boolean.valueOf(dVar.l());
            this.f = dVar.b();
            this.g = dVar.k();
            this.h = dVar.i();
            this.i = dVar.c();
            this.j = dVar.e();
            this.k = Integer.valueOf(dVar.g());
        }
    }

    s10(String str, String str2, long j2, Long l, boolean z, i20.d.a aVar, i20.d.f fVar, i20.d.e eVar, i20.d.c cVar, j20 j20, int i2, a aVar2) {
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = l;
        this.e = z;
        this.f = aVar;
        this.g = fVar;
        this.h = eVar;
        this.i = cVar;
        this.j = j20;
        this.k = i2;
    }

    @Override // defpackage.i20.d
    public i20.d.a b() {
        return this.f;
    }

    @Override // defpackage.i20.d
    public i20.d.c c() {
        return this.i;
    }

    @Override // defpackage.i20.d
    public Long d() {
        return this.d;
    }

    @Override // defpackage.i20.d
    public j20<i20.d.AbstractC0101d> e() {
        return this.j;
    }

    public boolean equals(Object obj) {
        Long l;
        i20.d.f fVar;
        i20.d.e eVar;
        i20.d.c cVar;
        j20<i20.d.AbstractC0101d> j20;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d)) {
            return false;
        }
        i20.d dVar = (i20.d) obj;
        if (!this.a.equals(dVar.f()) || !this.b.equals(dVar.h()) || this.c != dVar.j() || ((l = this.d) != null ? !l.equals(dVar.d()) : dVar.d() != null) || this.e != dVar.l() || !this.f.equals(dVar.b()) || ((fVar = this.g) != null ? !fVar.equals(dVar.k()) : dVar.k() != null) || ((eVar = this.h) != null ? !eVar.equals(dVar.i()) : dVar.i() != null) || ((cVar = this.i) != null ? !cVar.equals(dVar.c()) : dVar.c() != null) || ((j20 = this.j) != null ? !j20.equals(dVar.e()) : dVar.e() != null) || this.k != dVar.g()) {
            return false;
        }
        return true;
    }

    @Override // defpackage.i20.d
    public String f() {
        return this.a;
    }

    @Override // defpackage.i20.d
    public int g() {
        return this.k;
    }

    @Override // defpackage.i20.d
    public String h() {
        return this.b;
    }

    public int hashCode() {
        long j2 = this.c;
        int hashCode = (((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        Long l = this.d;
        int i2 = 0;
        int hashCode2 = (((((hashCode ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.e ? 1231 : 1237)) * 1000003) ^ this.f.hashCode()) * 1000003;
        i20.d.f fVar = this.g;
        int hashCode3 = (hashCode2 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        i20.d.e eVar = this.h;
        int hashCode4 = (hashCode3 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        i20.d.c cVar = this.i;
        int hashCode5 = (hashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        j20<i20.d.AbstractC0101d> j20 = this.j;
        if (j20 != null) {
            i2 = j20.hashCode();
        }
        return ((hashCode5 ^ i2) * 1000003) ^ this.k;
    }

    @Override // defpackage.i20.d
    public i20.d.e i() {
        return this.h;
    }

    @Override // defpackage.i20.d
    public long j() {
        return this.c;
    }

    @Override // defpackage.i20.d
    public i20.d.f k() {
        return this.g;
    }

    @Override // defpackage.i20.d
    public boolean l() {
        return this.e;
    }

    @Override // defpackage.i20.d
    public i20.d.b m() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder q = ic.q("Session{generator=");
        q.append(this.a);
        q.append(", identifier=");
        q.append(this.b);
        q.append(", startedAt=");
        q.append(this.c);
        q.append(", endedAt=");
        q.append(this.d);
        q.append(", crashed=");
        q.append(this.e);
        q.append(", app=");
        q.append(this.f);
        q.append(", user=");
        q.append(this.g);
        q.append(", os=");
        q.append(this.h);
        q.append(", device=");
        q.append(this.i);
        q.append(", events=");
        q.append(this.j);
        q.append(", generatorType=");
        return ic.k(q, this.k, "}");
    }
}
