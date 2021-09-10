package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.camerasideas.collagemaker.R$styleable;

public class RippleImageView extends AppCompatImageView {
    private Drawable d;
    private int e;

    public RippleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setHotspot(f, f2);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatImageView
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setState(drawableState);
            invalidate();
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.d) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void k(int i) {
        if (i == 0 || i != this.e) {
            Drawable drawable = null;
            if (i != 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    drawable = getContext().getDrawable(i);
                } else {
                    drawable = getContext().getResources().getDrawable(i);
                }
            }
            setForeground(drawable);
            this.e = i;
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.d);
        }
        if (drawable != null) {
            drawable.setCallback(this);
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setBounds(0, 0, getWidth(), getHeight());
        }
        this.e = 0;
        this.d = drawable;
    }

    public RippleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes;
        Drawable drawable = null;
        this.d = null;
        if (!(attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.h)) == null)) {
            drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
        }
        setForeground(drawable);
    }
}
