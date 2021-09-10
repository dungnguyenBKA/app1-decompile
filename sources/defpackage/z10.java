package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: z10  reason: default package */
public final class z10 extends i20.d.AbstractC0101d.a.b.AbstractC0103a {
    private final long a;
    private final long b;
    private final String c;
    private final String d;

    /* access modifiers changed from: package-private */
    /* renamed from: z10$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a {
        private Long a;
        private Long b;
        private String c;
        private String d;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a
        public i20.d.AbstractC0101d.a.b.AbstractC0103a a() {
            String str = this.a == null ? " baseAddress" : "";
            if (this.b == null) {
                str = ic.i(str, " size");
            }
            if (this.c == null) {
                str = ic.i(str, " name");
            }
            if (str.isEmpty()) {
                return new z10(this.a.longValue(), this.b.longValue(), this.c, this.d, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a
        public i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a b(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a
        public i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a c(String str) {
            Objects.requireNonNull(str, "Null name");
            this.c = str;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a
        public i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a
        public i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a e(String str) {
            this.d = str;
            return this;
        }
    }

    z10(long j, long j2, String str, String str2, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = str;
        this.d = str2;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a
    public long b() {
        return this.a;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a
    public String c() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a
    public long d() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0103a
    public String e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b.AbstractC0103a)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b.AbstractC0103a aVar = (i20.d.AbstractC0101d.a.b.AbstractC0103a) obj;
        if (this.a == aVar.b() && this.b == aVar.d() && this.c.equals(aVar.c())) {
            String str = this.d;
            if (str == null) {
                if (aVar.e() == null) {
                    return true;
                }
            } else if (str.equals(aVar.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int hashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str = this.d;
        return (str == null ? 0 : str.hashCode()) ^ hashCode;
    }

    public String toString() {
        StringBuilder q = ic.q("BinaryImage{baseAddress=");
        q.append(this.a);
        q.append(", size=");
        q.append(this.b);
        q.append(", name=");
        q.append(this.c);
        q.append(", uuid=");
        return ic.l(q, this.d, "}");
    }
}
