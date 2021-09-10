package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: o8  reason: default package */
public class o8 {
    public static final o8 c = new o8("COMPOSITION");
    private final List<String> a;
    private p8 b;

    public o8(String... strArr) {
        this.a = Arrays.asList(strArr);
    }

    private boolean b() {
        List<String> list = this.a;
        return list.get(list.size() - 1).equals("**");
    }

    public o8 a(String str) {
        o8 o8Var = new o8(this);
        o8Var.a.add(str);
        return o8Var;
    }

    public boolean c(String str, int i) {
        if (i >= this.a.size()) {
            return false;
        }
        boolean z = i == this.a.size() - 1;
        String str2 = this.a.get(i);
        if (!str2.equals("**")) {
            boolean z2 = str2.equals(str) || str2.equals("*");
            if ((z || (i == this.a.size() - 2 && b())) && z2) {
                return true;
            }
            return false;
        }
        if (!z && this.a.get(i + 1).equals(str)) {
            if (i == this.a.size() - 2 || (i == this.a.size() - 3 && b())) {
                return true;
            }
            return false;
        } else if (z) {
            return true;
        } else {
            int i2 = i + 1;
            if (i2 < this.a.size() - 1) {
                return false;
            }
            return this.a.get(i2).equals(str);
        }
    }

    public p8 d() {
        return this.b;
    }

    public int e(String str, int i) {
        if ("__container".equals(str)) {
            return 0;
        }
        if (!this.a.get(i).equals("**")) {
            return 1;
        }
        if (i != this.a.size() - 1 && this.a.get(i + 1).equals(str)) {
            return 2;
        }
        return 0;
    }

    public boolean f(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        if (i >= this.a.size()) {
            return false;
        }
        if (this.a.get(i).equals(str) || this.a.get(i).equals("**") || this.a.get(i).equals("*")) {
            return true;
        }
        return false;
    }

    public boolean g(String str, int i) {
        if (!"__container".equals(str) && i >= this.a.size() - 1 && !this.a.get(i).equals("**")) {
            return false;
        }
        return true;
    }

    public o8 h(p8 p8Var) {
        o8 o8Var = new o8(this);
        o8Var.b = p8Var;
        return o8Var;
    }

    public String toString() {
        StringBuilder q = ic.q("KeyPath{keys=");
        q.append(this.a);
        q.append(",resolved=");
        q.append(this.b != null);
        q.append('}');
        return q.toString();
    }

    private o8(o8 o8Var) {
        this.a = new ArrayList(o8Var.a);
        this.b = o8Var.b;
    }
}
