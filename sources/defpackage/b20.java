package defpackage;

import defpackage.i20;
import java.util.Objects;

/* renamed from: b20  reason: default package */
final class b20 extends i20.d.AbstractC0101d.a.b.AbstractC0107d {
    private final String a;
    private final String b;
    private final long c;

    /* access modifiers changed from: package-private */
    /* renamed from: b20$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a {
        private String a;
        private String b;
        private Long c;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a
        public i20.d.AbstractC0101d.a.b.AbstractC0107d a() {
            String str = this.a == null ? " name" : "";
            if (this.b == null) {
                str = ic.i(str, " code");
            }
            if (this.c == null) {
                str = ic.i(str, " address");
            }
            if (str.isEmpty()) {
                return new b20(this.a, this.b, this.c.longValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a
        public i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a b(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a
        public i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a c(String str) {
            Objects.requireNonNull(str, "Null code");
            this.b = str;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a
        public i20.d.AbstractC0101d.a.b.AbstractC0107d.AbstractC0108a d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.a = str;
            return this;
        }
    }

    b20(String str, String str2, long j, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d
    public long b() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d
    public String c() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.AbstractC0107d
    public String d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b.AbstractC0107d)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b.AbstractC0107d dVar = (i20.d.AbstractC0101d.a.b.AbstractC0107d) obj;
        if (!this.a.equals(dVar.d()) || !this.b.equals(dVar.c()) || this.c != dVar.b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.c;
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder q = ic.q("Signal{name=");
        q.append(this.a);
        q.append(", code=");
        q.append(this.b);
        q.append(", address=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
