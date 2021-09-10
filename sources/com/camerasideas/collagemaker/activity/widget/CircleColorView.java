package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.a;
import photoeditor.cutout.backgrounderaser.R;

public class CircleColorView extends View {
    private Paint b = new Paint(3);
    private Paint c = new Paint(1);
    private Paint d = new Paint(1);
    private Paint e = new Paint(1);
    private int f;
    private PaintFlagsDrawFilter g;

    public CircleColorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        this.g = new PaintFlagsDrawFilter(0, 3);
        this.f = c2.b(context, 2.0f);
        this.b.setAntiAlias(true);
        this.b.setStyle(Paint.Style.FILL);
        this.c.setAntiAlias(true);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setStrokeWidth((float) this.f);
        this.c.setColor(a.b(context, R.color.b6));
        this.d.setAntiAlias(true);
        this.d.setStyle(Paint.Style.STROKE);
        this.d.setStrokeWidth((float) (this.f * 2));
        this.d.setColor(-1);
        this.e.setAntiAlias(true);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setStrokeWidth((float) (this.f >> 1));
        this.e.setColor(a.b(context, R.color.bj));
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.setDrawFilter(this.g);
        int width = getWidth();
        int height = getHeight();
        canvas.drawCircle((((float) width) * 1.0f) / 2.0f, (((float) height) * 1.0f) / 2.0f, (float) (Math.min(width, height) >> 1), this.b);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    public CircleColorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
