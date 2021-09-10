package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.camerasideas.collagemaker.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class PreviewBottomRoundView extends View {
    private Paint b = new Paint(1);
    private int c = 1;
    private int d = 0;
    private int e;
    private int f;
    private float g;

    public PreviewBottomRoundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    private void a(AttributeSet attributeSet, int i) {
        this.b.setStrokeWidth(1.0f);
        this.b.setStyle(Paint.Style.FILL);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.g, i, 0);
        Resources resources = getResources();
        this.c = obtainStyledAttributes.getInteger(1, 3);
        this.g = obtainStyledAttributes.getDimension(3, (float) c2.b(getContext(), 1.5f));
        this.e = obtainStyledAttributes.getColor(0, resources.getColor(R.color.f2do));
        this.f = obtainStyledAttributes.getColor(2, resources.getColor(R.color.hq));
        obtainStyledAttributes.recycle();
    }

    public void b(int i) {
        this.c = i;
        invalidate();
    }

    public void c(int i) {
        this.d = i;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i = 0;
        while (i < this.c) {
            this.b.setColor(i != this.d ? this.e : this.f);
            canvas.drawCircle(((this.g * 3.0f) / 2.0f) * ((float) ((i * 2) + 1)), (float) (canvas.getHeight() / 2), this.g, this.b);
            i++;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        float f2 = this.g;
        setMeasuredDimension((int) (f2 * 3.0f * ((float) this.c)), (int) (f2 * 3.0f));
    }

    public PreviewBottomRoundView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }
}
