package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.camerasideas.collagemaker.R$styleable;

public class FontTextView extends AppCompatTextView {
    private String e;
    private boolean f;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private PaintFlagsDrawFilter k;

    public FontTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = "";
        this.f = false;
        this.g = false;
        this.h = 0;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.f);
        this.e = obtainStyledAttributes.getString(6);
        this.f = obtainStyledAttributes.getBoolean(7, false);
        this.g = obtainStyledAttributes.getBoolean(2, false);
        this.h = obtainStyledAttributes.getInteger(0, 0);
        this.i = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        int i3 = obtainStyledAttributes.getInt(1, 0);
        if (i3 != 0) {
            getPaint().setFlags(i3);
            getPaint().setAntiAlias(true);
        }
        if (obtainStyledAttributes.getInt(3, 0) != 1) {
            this.e = "Roboto-Regular.ttf";
        } else {
            this.e = "Roboto-Medium.ttf";
        }
        obtainStyledAttributes.recycle();
        if (!TextUtils.isEmpty(this.e)) {
            setTypeface(mm.a(context, this.e));
        }
        if (this.f) {
            getPaint().setFlags(8);
        }
        if (this.g) {
            getPaint().setFlags(16);
        }
        getPaint().setAntiAlias(true);
        this.k = new PaintFlagsDrawFilter(0, 3);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.setDrawFilter(this.k);
        canvas.save();
        canvas.rotate((float) this.h, (float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
        canvas.translate((float) this.i, (float) this.j);
        super.onDraw(canvas);
        canvas.restore();
    }

    public FontTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
