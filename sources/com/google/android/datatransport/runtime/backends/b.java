package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.g;

/* access modifiers changed from: package-private */
public final class b extends g {
    private final g.a a;
    private final long b;

    b(g.a aVar, long j) {
        this.a = aVar;
        this.b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    public long b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    public g.a c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (!this.a.equals(gVar.c()) || this.b != gVar.b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.b;
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder q = ic.q("BackendResponse{status=");
        q.append(this.a);
        q.append(", nextRequestWaitMillis=");
        q.append(this.b);
        q.append("}");
        return q.toString();
    }
}
