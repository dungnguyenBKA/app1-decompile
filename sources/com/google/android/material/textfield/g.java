package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

class g extends my {
    private final Paint x;
    private final RectF y;
    private int z;

    g() {
        this(null);
    }

    /* access modifiers changed from: package-private */
    public boolean U() {
        return !this.y.isEmpty();
    }

    /* access modifiers changed from: package-private */
    public void V(float f, float f2, float f3, float f4) {
        RectF rectF = this.y;
        if (f != rectF.left || f2 != rectF.top || f3 != rectF.right || f4 != rectF.bottom) {
            rectF.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    @Override // defpackage.my
    public void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.z = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null);
        } else {
            this.z = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        canvas.drawRect(this.y, this.x);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.z);
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    g(qy qyVar) {
        super(qyVar == null ? new qy() : qyVar);
        Paint paint = new Paint(1);
        this.x = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.y = new RectF();
    }
}
