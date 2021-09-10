package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {
    private final b A = new b(this);

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e a() {
        return this.A.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public void b(c.e eVar) {
        this.A.j(eVar);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.A.a();
    }

    @Override // com.google.android.material.circularreveal.c
    public void d(Drawable drawable) {
        this.A.h(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.A;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.c
    public int f() {
        return this.A.d();
    }

    @Override // com.google.android.material.circularreveal.c
    public void h() {
        this.A.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void i(Canvas canvas) {
        super.draw(canvas);
    }

    public boolean isOpaque() {
        b bVar = this.A;
        if (bVar != null) {
            return bVar.g();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void j(int i) {
        this.A.i(i);
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean k() {
        return super.isOpaque();
    }
}
