package defpackage;

import defpackage.o50;

/* renamed from: k50  reason: default package */
final class k50 extends o50 {
    private final String a;
    private final long b;
    private final o50.b c;

    /* access modifiers changed from: package-private */
    /* renamed from: k50$b */
    public static final class b extends o50.a {
        private String a;
        private Long b;
        private o50.b c;

        b() {
        }

        @Override // defpackage.o50.a
        public o50 a() {
            String str = this.b == null ? " tokenExpirationTimestamp" : "";
            if (str.isEmpty()) {
                return new k50(this.a, this.b.longValue(), this.c, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // defpackage.o50.a
        public o50.a b(o50.b bVar) {
            this.c = bVar;
            return this;
        }

        @Override // defpackage.o50.a
        public o50.a c(String str) {
            this.a = str;
            return this;
        }

        @Override // defpackage.o50.a
        public o50.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    k50(String str, long j, o50.b bVar, a aVar) {
        this.a = str;
        this.b = j;
        this.c = bVar;
    }

    @Override // defpackage.o50
    public o50.b b() {
        return this.c;
    }

    @Override // defpackage.o50
    public String c() {
        return this.a;
    }

    @Override // defpackage.o50
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o50)) {
            return false;
        }
        o50 o50 = (o50) obj;
        String str = this.a;
        if (str != null ? str.equals(o50.c()) : o50.c() == null) {
            if (this.b == o50.d()) {
                o50.b bVar = this.c;
                if (bVar == null) {
                    if (o50.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(o50.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.b;
        int i2 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        o50.b bVar = this.c;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return i2 ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("TokenResult{token=");
        q.append(this.a);
        q.append(", tokenExpirationTimestamp=");
        q.append(this.b);
        q.append(", responseCode=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
