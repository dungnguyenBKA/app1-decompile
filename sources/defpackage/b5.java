package defpackage;

/* renamed from: b5  reason: default package */
public class b5 {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;

    public b5(boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
    }

    public boolean a() {
        return this.a;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b5.class != obj.getClass()) {
            return false;
        }
        b5 b5Var = (b5) obj;
        if (this.a == b5Var.a && this.b == b5Var.b && this.c == b5Var.c && this.d == b5Var.d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = this.a ? 1 : 0;
        if (this.b) {
            i += 16;
        }
        if (this.c) {
            i += 256;
        }
        return this.d ? i + 4096 : i;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.a), Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d));
    }
}
