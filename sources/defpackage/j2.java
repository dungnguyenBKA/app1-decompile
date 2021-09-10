package defpackage;

import java.util.Objects;

/* renamed from: j2  reason: default package */
public class j2<F, S> {
    public final F a;
    public final S b;

    public j2(F f, S s) {
        this.a = f;
        this.b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j2)) {
            return false;
        }
        j2 j2Var = (j2) obj;
        if (!Objects.equals(j2Var.a, this.a) || !Objects.equals(j2Var.b, this.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        F f = this.a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder q = ic.q("Pair{");
        q.append(String.valueOf(this.a));
        q.append(" ");
        q.append(String.valueOf(this.b));
        q.append("}");
        return q.toString();
    }
}
