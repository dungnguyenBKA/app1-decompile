package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: ps  reason: default package */
public final class ps extends vs {
    private final long a;

    ps(long j) {
        this.a = j;
    }

    @Override // defpackage.vs
    public long b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vs) || this.a != ((vs) obj).b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder q = ic.q("LogResponse{nextRequestWaitMillis=");
        q.append(this.a);
        q.append("}");
        return q.toString();
    }
}
