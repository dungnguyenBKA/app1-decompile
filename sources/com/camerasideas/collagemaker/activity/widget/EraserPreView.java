package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.a;
import photoeditor.cutout.backgrounderaser.R;

public class EraserPreView extends View {
    private Paint b;
    private Paint c;
    private PaintFlagsDrawFilter d;

    public EraserPreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.setDrawFilter(this.d);
        canvas.drawCircle((float) (canvas.getWidth() / 2), (float) (canvas.getHeight() / 2), (float) ((Math.min(canvas.getHeight(), canvas.getWidth()) / 2) - 2), this.b);
        this.c.setStrokeWidth(0.0f);
        canvas.drawCircle((float) (canvas.getWidth() / 2), (float) (canvas.getHeight() / 2), 0.0f, this.c);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int b2 = c2.b(getContext(), 80.0f);
        setMeasuredDimension(b2, b2);
        super.onMeasure(i, i2);
    }

    public EraserPreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Paint();
        this.c = new Paint();
        this.d = new PaintFlagsDrawFilter(0, 3);
        this.b.setAntiAlias(true);
        this.b.setStyle(Paint.Style.FILL);
        this.b.setColor(Color.parseColor("#26272A"));
        this.b.setAlpha(216);
        this.c.setAntiAlias(true);
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(a.b(getContext(), R.color.b6));
    }
}
