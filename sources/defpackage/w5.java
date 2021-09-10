package defpackage;

/* renamed from: w5  reason: default package */
public class w5 {
    public final String a;
    public final int b;

    public w5(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w5.class != obj.getClass()) {
            return false;
        }
        w5 w5Var = (w5) obj;
        if (this.b != w5Var.b) {
            return false;
        }
        return this.a.equals(w5Var.a);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
