package defpackage;

/* renamed from: an  reason: default package */
public class an {
    private String a;
    private String b;
    private int c;
    private boolean d = false;

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public void e(String str) {
        this.a = str;
    }

    public void f(String str) {
        this.b = str;
    }

    public void g(int i) {
        this.c = i;
    }

    public void h(boolean z) {
        this.d = z;
    }

    public String toString() {
        StringBuilder q = ic.q("CoverPath:");
        q.append(this.a);
        q.append("\nFolderPath:");
        q.append(this.b);
        q.append("\nFolderSize:");
        q.append(this.c);
        return q.toString();
    }
}
