package defpackage;

/* renamed from: ri0  reason: default package */
public final class ri0 {
    public static final ak0 d = ak0.e(":");
    public static final ak0 e = ak0.e(":status");
    public static final ak0 f = ak0.e(":method");
    public static final ak0 g = ak0.e(":path");
    public static final ak0 h = ak0.e(":scheme");
    public static final ak0 i = ak0.e(":authority");
    public final ak0 a;
    public final ak0 b;
    final int c;

    public ri0(String str, String str2) {
        this(ak0.e(str), ak0.e(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ri0)) {
            return false;
        }
        ri0 ri0 = (ri0) obj;
        if (!this.a.equals(ri0.a) || !this.b.equals(ri0.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 527) * 31);
    }

    public String toString() {
        return rh0.o("%s: %s", this.a.q(), this.b.q());
    }

    public ri0(ak0 ak0, String str) {
        this(ak0, ak0.e(str));
    }

    public ri0(ak0 ak0, ak0 ak02) {
        this.a = ak0;
        this.b = ak02;
        this.c = ak02.m() + ak0.m() + 32;
    }
}
