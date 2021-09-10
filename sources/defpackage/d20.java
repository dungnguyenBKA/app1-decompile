package defpackage;

import defpackage.i20;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: d20  reason: default package */
public final class d20 extends i20.d.AbstractC0101d.a.b.e.AbstractC0110b {
    private final long a;
    private final String b;
    private final String c;
    private final long d;
    private final int e;

    /* access modifiers changed from: package-private */
    /* renamed from: d20$b */
    public static final class b extends i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a {
        private Long a;
        private String b;
        private String c;
        private Long d;
        private Integer e;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b a() {
            String str = this.a == null ? " pc" : "";
            if (this.b == null) {
                str = ic.i(str, " symbol");
            }
            if (this.d == null) {
                str = ic.i(str, " offset");
            }
            if (this.e == null) {
                str = ic.i(str, " importance");
            }
            if (str.isEmpty()) {
                return new d20(this.a.longValue(), this.b, this.c, this.d.longValue(), this.e.intValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a b(String str) {
            this.c = str;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a c(int i) {
            this.e = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a d(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a e(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a
        public i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a f(String str) {
            Objects.requireNonNull(str, "Null symbol");
            this.b = str;
            return this;
        }
    }

    d20(long j, String str, String str2, long j2, int i, a aVar) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = j2;
        this.e = i;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b
    public String b() {
        return this.c;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b
    public int c() {
        return this.e;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b
    public long d() {
        return this.d;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b
    public long e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.a.b.e.AbstractC0110b)) {
            return false;
        }
        i20.d.AbstractC0101d.a.b.e.AbstractC0110b bVar = (i20.d.AbstractC0101d.a.b.e.AbstractC0110b) obj;
        if (this.a == bVar.e() && this.b.equals(bVar.f()) && ((str = this.c) != null ? str.equals(bVar.b()) : bVar.b() == null) && this.d == bVar.d() && this.e == bVar.c()) {
            return true;
        }
        return false;
    }

    @Override // defpackage.i20.d.AbstractC0101d.a.b.e.AbstractC0110b
    public String f() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        int hashCode = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.d;
        return this.e ^ ((((hashCode ^ hashCode2) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        StringBuilder q = ic.q("Frame{pc=");
        q.append(this.a);
        q.append(", symbol=");
        q.append(this.b);
        q.append(", file=");
        q.append(this.c);
        q.append(", offset=");
        q.append(this.d);
        q.append(", importance=");
        return ic.k(q, this.e, "}");
    }
}
