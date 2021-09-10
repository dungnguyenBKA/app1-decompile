package defpackage;

import android.graphics.PointF;
import android.graphics.RectF;

/* renamed from: gp  reason: default package */
public class gp {
    private float a = 0.0f;
    private float b = 0.0f;
    private float c = 0.0f;
    private float d = 0.0f;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private boolean k = true;
    private boolean l = true;
    private boolean m = true;
    private boolean n = true;
    private final int o;
    private final int p;

    public gp(int i2, int i3) {
        this.o = i2;
        this.p = i3;
        d();
    }

    public PointF a(float f2, float f3, RectF rectF, RectF rectF2) {
        boolean z;
        float centerX = rectF2.centerX() - rectF.centerX();
        float centerY = rectF2.centerY() - rectF.centerY();
        PointF pointF = new PointF(0.0f, 0.0f);
        if (this.f) {
            this.a += f2;
            if (Math.abs(centerX + f2) > ((float) this.o)) {
                this.f = false;
            }
            if (Math.abs(this.a) > ((float) this.p)) {
                this.k = true;
            }
        } else if (Math.abs(centerX + f2) < ((float) this.o)) {
            pointF.x = -centerX;
            this.f = true;
            this.a = 0.0f;
            this.k = false;
        } else {
            this.k = true;
        }
        if (this.e) {
            this.b += f3;
            if (Math.abs(centerY + f3) > ((float) this.o)) {
                this.e = false;
            }
            if (Math.abs(this.b) > ((float) this.p)) {
                this.l = true;
            }
        } else if (Math.abs(centerY + f3) < ((float) this.o)) {
            pointF.y = -centerY;
            this.e = true;
            this.b = 0.0f;
            this.l = false;
        } else {
            this.l = true;
        }
        if (this.k) {
            pointF.x = f2;
        }
        if (this.l) {
            pointF.y = f3;
        }
        if (!this.e || !this.f) {
            if (!this.f) {
                float f4 = rectF2.left - rectF.left;
                if (this.g) {
                    pointF.x = 0.0f;
                    this.c += f2;
                    if (Math.abs(f4 + f2) > ((float) this.o)) {
                        this.g = false;
                    }
                    if (Math.abs(this.c) > ((float) this.p)) {
                        this.m = true;
                    }
                } else if (Math.abs(f4 + f2) < ((float) this.o)) {
                    pointF.x = -f4;
                    this.g = true;
                    this.c = 0.0f;
                    this.m = false;
                } else if (!this.h) {
                    this.m = true;
                }
                if (rectF2.width() != rectF.width() && !this.g) {
                    float f5 = rectF2.right - rectF.right;
                    if (this.h) {
                        pointF.x = 0.0f;
                        this.c += f2;
                        if (Math.abs(f5 + f2) > ((float) this.o)) {
                            this.h = false;
                        }
                        if (Math.abs(this.c) > ((float) this.p)) {
                            this.m = true;
                        }
                    } else if (Math.abs(f5 + f3) < ((float) this.o)) {
                        pointF.x = -f5;
                        this.h = true;
                        this.c = 0.0f;
                        this.m = false;
                    } else {
                        this.m = true;
                    }
                }
            }
            if (!this.e) {
                float f6 = rectF2.top - rectF.top;
                if (this.i) {
                    pointF.y = 0.0f;
                    this.d += f3;
                    if (Math.abs(f6 + f3) > ((float) this.o)) {
                        this.i = false;
                    }
                    if (Math.abs(this.d) > ((float) this.p)) {
                        this.n = true;
                    }
                } else if (Math.abs(f6 + f3) < ((float) this.o)) {
                    pointF.y = -f6;
                    this.i = true;
                    this.d = 0.0f;
                    this.n = false;
                } else if (!this.j) {
                    this.n = true;
                }
                if (rectF2.height() != rectF.height() && !(z = this.i)) {
                    float f7 = rectF2.bottom - rectF.bottom;
                    if (this.j || z) {
                        pointF.y = 0.0f;
                        this.d += f3;
                        if (Math.abs(f7 + f3) > ((float) this.o)) {
                            this.j = false;
                        }
                        if (Math.abs(this.d) > ((float) this.p)) {
                            this.n = true;
                        }
                    } else if (Math.abs(f7 + f3) < ((float) this.o)) {
                        pointF.y = -f7;
                        this.j = true;
                        this.d = 0.0f;
                        this.n = false;
                    } else {
                        this.n = true;
                    }
                }
            }
            if (this.m && !this.f) {
                pointF.x = f2;
            }
            if (this.n && !this.e) {
                pointF.y = f3;
            }
        }
        return pointF;
    }

    public boolean b() {
        return this.k;
    }

    public boolean c() {
        return this.l;
    }

    public void d() {
        this.l = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.e = true;
        this.f = true;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
        this.d = 0.0f;
    }
}
