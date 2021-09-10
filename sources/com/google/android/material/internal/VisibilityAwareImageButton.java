package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

@SuppressLint({"AppCompatCustomView"})
public class VisibilityAwareImageButton extends ImageButton {
    private int b;

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final int k() {
        return this.b;
    }

    public final void l(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.b = i;
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        this.b = i;
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = getVisibility();
    }
}
