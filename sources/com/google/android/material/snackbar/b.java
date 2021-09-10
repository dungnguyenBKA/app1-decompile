package com.google.android.material.snackbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;

public class b extends FrameLayout {
    private static final View.OnTouchListener b = new a();

    static class a implements View.OnTouchListener {
        a() {
        }

        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    protected b(Context context, AttributeSet attributeSet) {
        super(i.e(context, attributeSet, 0, 0), attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.E);
        if (obtainStyledAttributes.hasValue(4)) {
            c3.w(this, (float) obtainStyledAttributes.getDimensionPixelSize(4, 0));
        }
        obtainStyledAttributes.getInt(2, 0);
        obtainStyledAttributes.getFloat(3, 1.0f);
        obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        setOnTouchListener(b);
        setFocusable(true);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i = c3.g;
        if (Build.VERSION.SDK_INT >= 20) {
            requestApplyInsets();
        } else {
            requestFitSystemWindows();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : b);
        super.setOnClickListener(onClickListener);
    }
}
