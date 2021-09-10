package defpackage;

import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: ls  reason: default package */
public final class ls extends rs {
    private final List<us> a;

    ls(List<us> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.a = list;
    }

    @Override // defpackage.rs
    public List<us> c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof rs) {
            return this.a.equals(((rs) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder q = ic.q("BatchedLogRequest{logRequests=");
        q.append(this.a);
        q.append("}");
        return q.toString();
    }
}
