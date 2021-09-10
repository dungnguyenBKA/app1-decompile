package defpackage;

import defpackage.fu;

/* renamed from: cu  reason: default package */
final class cu extends fu {
    private final long b;
    private final int c;
    private final int d;
    private final long e;
    private final int f;

    /* renamed from: cu$b */
    static final class b extends fu.a {
        private Long a;
        private Integer b;
        private Integer c;
        private Long d;
        private Integer e;

        b() {
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.fu.a
        public fu a() {
            String str = this.a == null ? " maxStorageSizeInBytes" : "";
            if (this.b == null) {
                str = ic.i(str, " loadBatchSize");
            }
            if (this.c == null) {
                str = ic.i(str, " criticalSectionEnterTimeoutMs");
            }
            if (this.d == null) {
                str = ic.i(str, " eventCleanUpAge");
            }
            if (this.e == null) {
                str = ic.i(str, " maxBlobByteSizePerRow");
            }
            if (str.isEmpty()) {
                return new cu(this.a.longValue(), this.b.intValue(), this.c.intValue(), this.d.longValue(), this.e.intValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.fu.a
        public fu.a b(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.fu.a
        public fu.a c(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.fu.a
        public fu.a d(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.fu.a
        public fu.a e(int i) {
            this.e = Integer.valueOf(i);
            return this;
        }

        /* access modifiers changed from: package-private */
        public fu.a f(long j) {
            this.a = Long.valueOf(j);
            return this;
        }
    }

    cu(long j, int i, int i2, long j2, int i3, a aVar) {
        this.b = j;
        this.c = i;
        this.d = i2;
        this.e = j2;
        this.f = i3;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.fu
    public int a() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.fu
    public long b() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.fu
    public int c() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.fu
    public int d() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.fu
    public long e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fu)) {
            return false;
        }
        fu fuVar = (fu) obj;
        if (this.b == fuVar.e() && this.c == fuVar.c() && this.d == fuVar.a() && this.e == fuVar.b() && this.f == fuVar.d()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j = this.b;
        long j2 = this.e;
        return this.f ^ ((((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.c) * 1000003) ^ this.d) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        StringBuilder q = ic.q("EventStoreConfig{maxStorageSizeInBytes=");
        q.append(this.b);
        q.append(", loadBatchSize=");
        q.append(this.c);
        q.append(", criticalSectionEnterTimeoutMs=");
        q.append(this.d);
        q.append(", eventCleanUpAge=");
        q.append(this.e);
        q.append(", maxBlobByteSizePerRow=");
        return ic.k(q, this.f, "}");
    }
}
