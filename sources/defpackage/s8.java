package defpackage;

/* renamed from: s8  reason: default package */
public class s8<T> {
    T a;
    T b;

    public void a(T t, T t2) {
        this.a = t;
        this.b = t2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j2)) {
            return false;
        }
        j2 j2Var = (j2) obj;
        F f = j2Var.a;
        T t = this.a;
        if (!(f == t || (f != null && f.equals(t)))) {
            return false;
        }
        S s = j2Var.b;
        T t2 = this.b;
        if (s == t2 || (s != null && s.equals(t2))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        T t = this.a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.b;
        if (t2 != null) {
            i = t2.hashCode();
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
