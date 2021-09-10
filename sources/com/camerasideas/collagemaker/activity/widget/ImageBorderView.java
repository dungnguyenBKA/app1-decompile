package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.a;
import photoeditor.cutout.backgrounderaser.R;

public class ImageBorderView extends AppCompatImageView {
    private Paint d = new Paint(3);
    private TextPaint e = new TextPaint(3);

    public ImageBorderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d.setStyle(Paint.Style.STROKE);
        this.d.setColor(a.b(context, R.color.b6));
        this.d.setStrokeWidth((float) c2.b(context, 5.0f));
        this.e.setColor(-1);
        this.e.setTextSize((float) c2.c(context, 12));
        this.e.setTypeface(Typeface.createFromAsset(context.getAssets(), "Roboto-Medium.ttf"));
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception e2) {
            em.h("ImageBorderView", "onDraw e = " + e2);
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }
}
