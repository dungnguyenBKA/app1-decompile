package defpackage;

/* renamed from: pn  reason: default package */
public class pn extends on {
    protected int a;
    protected String b = "";

    public int a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof pn) && this.a == ((pn) obj).a;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
