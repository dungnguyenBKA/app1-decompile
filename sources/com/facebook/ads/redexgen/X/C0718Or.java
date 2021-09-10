package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* renamed from: com.facebook.ads.redexgen.X.Or  reason: case insensitive filesystem */
public final class C0718Or extends RelativeLayout {
    public final Paint A00 = new Paint();
    public final RectF A01;

    public C0718Or(XJ xj, String str) {
        super(xj);
        float f = xj.getResources().getDisplayMetrics().density;
        TextView textView = new TextView(xj);
        textView.setTextColor(-16777216);
        textView.setTextSize(16.0f);
        textView.setText(str);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        setGravity(17);
        int i = (int) (6.0f * f);
        textView.setPadding(i, i, i, i);
        addView(textView);
        this.A00.setStyle(Paint.Style.FILL);
        this.A00.setColor(-1);
        this.A01 = new RectF();
        C0632Lh.A0P(this, 0);
    }

    public final void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.A01.set(0.0f, 0.0f, (float) getWidth(), (float) getHeight());
        canvas.drawRoundRect(this.A01, f * 10.0f, 10.0f * f, this.A00);
        super.onDraw(canvas);
    }
}
