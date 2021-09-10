package com.google.android.material.circularreveal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.circularreveal.c;

public class CircularRevealFrameLayout extends FrameLayout implements c {
    private final b b = new b(this);

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e a() {
        return this.b.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public void b(c.e eVar) {
        this.b.j(eVar);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.b.a();
    }

    @Override // com.google.android.material.circularreveal.c
    public void d(Drawable drawable) {
        this.b.h(drawable);
    }

    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
        b bVar = this.b;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.c
    public int f() {
        return this.b.d();
    }

    @Override // com.google.android.material.circularreveal.c
    public void h() {
        this.b.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void i(Canvas canvas) {
        super.draw(canvas);
    }

    public boolean isOpaque() {
        b bVar = this.b;
        if (bVar != null) {
            return bVar.g();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void j(int i) {
        this.b.i(i);
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean k() {
        return super.isOpaque();
    }
}
