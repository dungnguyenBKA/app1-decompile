package com.google.firebase.installations;

import com.google.firebase.installations.l;
import java.util.Objects;

final class a extends l {
    private final String a;
    private final long b;
    private final long c;

    static final class b extends l.a {
        private String a;
        private Long b;
        private Long c;

        b() {
        }

        @Override // com.google.firebase.installations.l.a
        public l a() {
            String str = this.a == null ? " token" : "";
            if (this.b == null) {
                str = ic.i(str, " tokenExpirationTimestamp");
            }
            if (this.c == null) {
                str = ic.i(str, " tokenCreationTimestamp");
            }
            if (str.isEmpty()) {
                return new a(this.a, this.b.longValue(), this.c.longValue(), null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // com.google.firebase.installations.l.a
        public l.a b(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.l.a
        public l.a c(long j) {
            this.b = Long.valueOf(j);
            return this;
        }

        public l.a d(String str) {
            Objects.requireNonNull(str, "Null token");
            this.a = str;
            return this;
        }
    }

    a(String str, long j, long j2, C0084a aVar) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    @Override // com.google.firebase.installations.l
    public String a() {
        return this.a;
    }

    @Override // com.google.firebase.installations.l
    public long b() {
        return this.c;
    }

    @Override // com.google.firebase.installations.l
    public long c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.a.equals(lVar.a()) && this.b == lVar.c() && this.c == lVar.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j = this.b;
        long j2 = this.c;
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder q = ic.q("InstallationTokenResult{token=");
        q.append(this.a);
        q.append(", tokenExpirationTimestamp=");
        q.append(this.b);
        q.append(", tokenCreationTimestamp=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
