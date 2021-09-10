package defpackage;

import java.util.List;

/* renamed from: n8  reason: default package */
public class n8 {
    private final List<u9> a;
    private final char b;
    private final double c;
    private final String d;
    private final String e;

    public n8(List<u9> list, char c2, double d2, double d3, String str, String str2) {
        this.a = list;
        this.b = c2;
        this.c = d3;
        this.d = str;
        this.e = str2;
    }

    public static int c(char c2, String str, String str2) {
        return str2.hashCode() + ic.w(str, (c2 + 0) * 31, 31);
    }

    public List<u9> a() {
        return this.a;
    }

    public double b() {
        return this.c;
    }

    public int hashCode() {
        return c(this.b, this.e, this.d);
    }
}
