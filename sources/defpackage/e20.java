package defpackage;

import defpackage.i20;

/* access modifiers changed from: package-private */
/* renamed from: e20  reason: default package */
public final class e20 extends i20.d.AbstractC0101d.c {
    private final Double a;
    private final int b;
    private final boolean c;
    private final int d;
    private final long e;
    private final long f;

    /* access modifiers changed from: package-private */
    /* renamed from: e20$b */
    public static final class b extends i20.d.AbstractC0101d.c.a {
        private Double a;
        private Integer b;
        private Boolean c;
        private Integer d;
        private Long e;
        private Long f;

        b() {
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c a() {
            String str = this.b == null ? " batteryVelocity" : "";
            if (this.c == null) {
                str = ic.i(str, " proximityOn");
            }
            if (this.d == null) {
                str = ic.i(str, " orientation");
            }
            if (this.e == null) {
                str = ic.i(str, " ramUsed");
            }
            if (this.f == null) {
                str = ic.i(str, " diskUsed");
            }
            if (str.isEmpty()) {
                return new e20(this.a, this.b.intValue(), this.c.booleanValue(), this.d.intValue(), this.e.longValue(), this.f.longValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a b(Double d2) {
            this.a = d2;
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a c(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a d(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a e(int i) {
            this.d = Integer.valueOf(i);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a f(boolean z) {
            this.c = Boolean.valueOf(z);
            return this;
        }

        @Override // defpackage.i20.d.AbstractC0101d.c.a
        public i20.d.AbstractC0101d.c.a g(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    e20(Double d2, int i, boolean z, int i2, long j, long j2, a aVar) {
        this.a = d2;
        this.b = i;
        this.c = z;
        this.d = i2;
        this.e = j;
        this.f = j2;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public Double b() {
        return this.a;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public int c() {
        return this.b;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public long d() {
        return this.f;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public int e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i20.d.AbstractC0101d.c)) {
            return false;
        }
        i20.d.AbstractC0101d.c cVar = (i20.d.AbstractC0101d.c) obj;
        Double d2 = this.a;
        if (d2 != null ? d2.equals(cVar.b()) : cVar.b() == null) {
            if (this.b == cVar.c() && this.c == cVar.g() && this.d == cVar.e() && this.e == cVar.f() && this.f == cVar.d()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public long f() {
        return this.e;
    }

    @Override // defpackage.i20.d.AbstractC0101d.c
    public boolean g() {
        return this.c;
    }

    public int hashCode() {
        Double d2 = this.a;
        int hashCode = ((((d2 == null ? 0 : d2.hashCode()) ^ 1000003) * 1000003) ^ this.b) * 1000003;
        int i = this.c ? 1231 : 1237;
        long j = this.e;
        long j2 = this.f;
        return ((((((hashCode ^ i) * 1000003) ^ this.d) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder q = ic.q("Device{batteryLevel=");
        q.append(this.a);
        q.append(", batteryVelocity=");
        q.append(this.b);
        q.append(", proximityOn=");
        q.append(this.c);
        q.append(", orientation=");
        q.append(this.d);
        q.append(", ramUsed=");
        q.append(this.e);
        q.append(", diskUsed=");
        q.append(this.f);
        q.append("}");
        return q.toString();
    }
}
