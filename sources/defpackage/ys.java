package defpackage;

import defpackage.et;
import java.util.Map;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: ys  reason: default package */
public final class ys extends et {
    private final String a;
    private final Integer b;
    private final dt c;
    private final long d;
    private final long e;
    private final Map<String, String> f;

    /* access modifiers changed from: package-private */
    /* renamed from: ys$b */
    public static final class b extends et.a {
        private String a;
        private Integer b;
        private dt c;
        private Long d;
        private Long e;
        private Map<String, String> f;

        b() {
        }

        @Override // defpackage.et.a
        public et d() {
            String str = this.a == null ? " transportName" : "";
            if (this.c == null) {
                str = ic.i(str, " encodedPayload");
            }
            if (this.d == null) {
                str = ic.i(str, " eventMillis");
            }
            if (this.e == null) {
                str = ic.i(str, " uptimeMillis");
            }
            if (this.f == null) {
                str = ic.i(str, " autoMetadata");
            }
            if (str.isEmpty()) {
                return new ys(this.a, this.b, this.c, this.d.longValue(), this.e.longValue(), this.f, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.et.a
        public Map<String, String> e() {
            Map<String, String> map = this.f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // defpackage.et.a
        public et.a f(Integer num) {
            this.b = num;
            return this;
        }

        @Override // defpackage.et.a
        public et.a g(dt dtVar) {
            Objects.requireNonNull(dtVar, "Null encodedPayload");
            this.c = dtVar;
            return this;
        }

        @Override // defpackage.et.a
        public et.a h(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.et.a
        public et.a i(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.a = str;
            return this;
        }

        @Override // defpackage.et.a
        public et.a j(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        /* access modifiers changed from: protected */
        public et.a k(Map<String, String> map) {
            this.f = map;
            return this;
        }
    }

    ys(String str, Integer num, dt dtVar, long j, long j2, Map map, a aVar) {
        this.a = str;
        this.b = num;
        this.c = dtVar;
        this.d = j;
        this.e = j2;
        this.f = map;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.et
    public Map<String, String> c() {
        return this.f;
    }

    @Override // defpackage.et
    public Integer d() {
        return this.b;
    }

    @Override // defpackage.et
    public dt e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof et)) {
            return false;
        }
        et etVar = (et) obj;
        if (!this.a.equals(etVar.j()) || ((num = this.b) != null ? !num.equals(etVar.d()) : etVar.d() != null) || !this.c.equals(etVar.e()) || this.d != etVar.f() || this.e != etVar.k() || !this.f.equals(etVar.c())) {
            return false;
        }
        return true;
    }

    @Override // defpackage.et
    public long f() {
        return this.d;
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        long j = this.d;
        long j2 = this.e;
        return ((((((((hashCode ^ hashCode2) * 1000003) ^ this.c.hashCode()) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    @Override // defpackage.et
    public String j() {
        return this.a;
    }

    @Override // defpackage.et
    public long k() {
        return this.e;
    }

    public String toString() {
        StringBuilder q = ic.q("EventInternal{transportName=");
        q.append(this.a);
        q.append(", code=");
        q.append(this.b);
        q.append(", encodedPayload=");
        q.append(this.c);
        q.append(", eventMillis=");
        q.append(this.d);
        q.append(", uptimeMillis=");
        q.append(this.e);
        q.append(", autoMetadata=");
        q.append(this.f);
        q.append("}");
        return q.toString();
    }
}
