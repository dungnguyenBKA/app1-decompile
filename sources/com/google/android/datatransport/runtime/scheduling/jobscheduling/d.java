package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Objects;
import java.util.Set;

final class d extends g.b {
    private final long a;
    private final long b;
    private final Set<g.c> c;

    /* access modifiers changed from: package-private */
    public static final class b extends g.b.a {
        private Long a;
        private Long b;
        private Set<g.c> c;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b a() {
            String str = this.a == null ? " delta" : "";
            if (this.b == null) {
                str = ic.i(str, " maxAllowedDelay");
            }
            if (this.c == null) {
                str = ic.i(str, " flags");
            }
            if (str.isEmpty()) {
                return new d(this.a.longValue(), this.b.longValue(), this.c, null);
            }
            throw new IllegalStateException(ic.i("Missing required properties:", str));
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a b(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a c(Set<g.c> set) {
            Objects.requireNonNull(set, "Null flags");
            this.c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    d(long j, long j2, Set set, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    public long b() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    public Set<g.c> c() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        if (this.a == bVar.b() && this.b == bVar.d() && this.c.equals(bVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        return this.c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        StringBuilder q = ic.q("ConfigValue{delta=");
        q.append(this.a);
        q.append(", maxAllowedDelay=");
        q.append(this.b);
        q.append(", flags=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
