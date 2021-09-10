package com.google.android.material.bottomappbar;

public class d extends ly implements Cloneable {
    private float b;
    private float c;
    private float d;
    private float e;
    private float f;

    public d(float f2, float f3, float f4) {
        this.c = f2;
        this.b = f3;
        this.e = f4;
        if (f4 >= 0.0f) {
            this.f = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    @Override // defpackage.ly
    public void a(float f2, float f3, float f4, sy syVar) {
        float f5 = this.d;
        if (f5 == 0.0f) {
            syVar.e(f2, 0.0f);
            return;
        }
        float f6 = ((this.c * 2.0f) + f5) / 2.0f;
        float f7 = f4 * this.b;
        float f8 = f3 + this.f;
        float a = ic.a(1.0f, f4, f6, this.e * f4);
        if (a / f6 >= 1.0f) {
            syVar.e(f2, 0.0f);
            return;
        }
        float f9 = f6 + f7;
        float f10 = a + f7;
        float sqrt = (float) Math.sqrt((double) ((f9 * f9) - (f10 * f10)));
        float f11 = f8 - sqrt;
        float f12 = f8 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan((double) (sqrt / f10)));
        float f13 = 90.0f - degrees;
        syVar.e(f11, 0.0f);
        float f14 = f7 * 2.0f;
        syVar.a(f11 - f7, 0.0f, f11 + f7, f14, 270.0f, degrees);
        syVar.a(f8 - f6, (-f6) - a, f8 + f6, f6 - a, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        syVar.a(f12 - f7, 0.0f, f12 + f7, f14, 270.0f - degrees, degrees);
        syVar.e(f2, 0.0f);
    }

    /* access modifiers changed from: package-private */
    public float b() {
        return this.e;
    }

    public float c() {
        return this.d;
    }

    public float d() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public void e(float f2) {
        this.e = f2;
    }

    public void f(float f2) {
        this.d = f2;
    }

    /* access modifiers changed from: package-private */
    public void g(float f2) {
        this.f = f2;
    }
}
