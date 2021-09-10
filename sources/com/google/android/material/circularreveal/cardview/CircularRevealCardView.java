package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCardView extends MaterialCardView implements c {
    private final b q = new b(this);

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e a() {
        return this.q.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public void b(c.e eVar) {
        this.q.j(eVar);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.q.a();
    }

    @Override // com.google.android.material.circularreveal.c
    public void d(Drawable drawable) {
        this.q.h(drawable);
    }

    public void draw(Canvas canvas) {
        b bVar = this.q;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.c
    public int f() {
        return this.q.d();
    }

    @Override // com.google.android.material.circularreveal.c
    public void h() {
        this.q.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void i(Canvas canvas) {
        super.draw(canvas);
    }

    public boolean isOpaque() {
        b bVar = this.q;
        if (bVar != null) {
            return bVar.g();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void j(int i) {
        this.q.i(i);
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean k() {
        return super.isOpaque();
    }
}
