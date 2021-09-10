package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import photoeditor.cutout.backgrounderaser.R;

public class VerticalSeekBar extends View {
    private int b;
    private int c;
    private Paint d;
    private int e = 100;
    private int f = 50;
    protected Bitmap g;
    private int h;
    private int i;
    private boolean j;
    private float k;
    private int l = -1;
    private int m = 4;
    private RectF n;
    private Path o;
    private a p;

    public interface a {
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context);
    }

    private void a() {
        int i2 = this.l;
        int i3 = this.h;
        if (i2 <= i3 / 2) {
            this.l = i3 / 2;
            return;
        }
        int i4 = this.b;
        if (i2 >= i4 - (i3 / 2)) {
            this.l = i4 - (i3 / 2);
        }
    }

    private void b(Context context) {
        Paint paint = new Paint();
        this.d = paint;
        paint.setAntiAlias(true);
        this.d.setColor(Color.parseColor("#D0FFFFFF"));
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.nm);
        this.g = decodeResource;
        this.h = decodeResource.getHeight();
        this.i = this.g.getWidth();
        this.n = new RectF(0.0f, 0.0f, (float) this.i, (float) this.h);
        c2.b(context, (float) this.m);
        this.o = new Path();
    }

    public void c(a aVar) {
        this.p = aVar;
    }

    public void d(int i2) {
        if (this.b == 0) {
            this.b = getMeasuredHeight();
        }
        this.f = i2;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        Bitmap bitmap = this.g;
        if (bitmap != null) {
            bitmap.recycle();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        this.o.reset();
        this.o.moveTo(0.0f, (float) (this.h / 2));
        this.o.lineTo((float) getWidth(), (float) (this.h / 2));
        this.o.lineTo((float) (getWidth() / 2), (float) (getHeight() - (this.h / 2)));
        this.o.close();
        int i2 = this.h;
        int i3 = this.e;
        this.l = (int) ((((float) i2) * 0.5f) + ((float) (((this.b - i2) * (i3 - this.f)) / i3)));
        canvas.drawPath(this.o, this.d);
        canvas.save();
        canvas.translate(((float) (this.c / 2)) - (this.n.width() / 2.0f), ((float) this.l) - (this.n.height() / 2.0f));
        this.n.set(0.0f, 0.0f, (float) (getWidth() + 10), (float) (getWidth() + 9));
        canvas.drawBitmap(this.g, (Rect) null, this.n, (Paint) null);
        canvas.restore();
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.b = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        this.c = measuredWidth;
        if (this.l == -1) {
            int i6 = measuredWidth / 2;
            this.l = this.b / 2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00fb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
        // Method dump skipped, instructions count: 268
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.VerticalSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        b(context);
    }
}
