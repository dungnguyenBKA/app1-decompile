package defpackage;

/* renamed from: hc  reason: default package */
public class hc {
    private float a;
    private float b;

    public hc() {
        this.a = 1.0f;
        this.b = 1.0f;
    }

    public boolean a(float f, float f2) {
        return this.a == f && this.b == f2;
    }

    public float b() {
        return this.a;
    }

    public float c() {
        return this.b;
    }

    public void d(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public String toString() {
        return this.a + "x" + this.b;
    }

    public hc(float f, float f2) {
        this.a = f;
        this.b = f2;
    }
}
