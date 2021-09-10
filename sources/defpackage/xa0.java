package defpackage;

/* renamed from: xa0  reason: default package */
public class xa0 {
    private String a;
    private boolean b;
    private int c;
    private int d;

    public String a() {
        return this.a;
    }

    public int b() {
        return this.d;
    }

    public boolean c() {
        return this.b;
    }

    public void d(String str) {
        this.a = str;
    }

    public void e(boolean z) {
        this.b = z;
    }

    public void f(int i) {
        this.d = i;
    }

    public void g(int i) {
        this.c = i;
    }

    public String toString() {
        StringBuilder q = ic.q("notchEnable: ");
        q.append(this.b);
        q.append(" notchWidth: ");
        q.append(this.c);
        q.append(" notchHeight: ");
        q.append(this.d);
        q.append(" manufacturer: ");
        q.append(this.a);
        return q.toString();
    }
}
