package defpackage;

import java.io.Serializable;

/* renamed from: vl  reason: default package */
public final class vl implements Serializable {
    private final int b;
    private final int c;

    public vl(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public int a() {
        return this.c;
    }

    public float b() {
        return ((float) this.b) / ((float) this.c);
    }

    public int c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vl)) {
            return false;
        }
        vl vlVar = (vl) obj;
        if (this.b == vlVar.b && this.c == vlVar.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = this.c;
        int i2 = this.b;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.b + "x" + this.c;
    }
}
