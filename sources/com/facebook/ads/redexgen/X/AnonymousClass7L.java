package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.7L */
public final class AnonymousClass7L extends MP {
    public final Paint A00;
    public final XJ A01;
    public final JJ A02;
    public final AbstractC0629Le A03 = new AnonymousClass7N(this);
    public final KW A04 = new AnonymousClass7P(this);
    public final KQ A05 = new AnonymousClass7O(this);
    public final C0736Pj A06;

    public AnonymousClass7L(XJ xj, boolean z, JJ jj) {
        super(xj);
        this.A02 = jj;
        this.A01 = xj;
        this.A06 = new C0736Pj(xj, z);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 23.76d), (int) (((double) displayMetrics.density) * 23.76d));
        layoutParams.addRule(13);
        this.A06.setLayoutParams(layoutParams);
        this.A06.setChecked(true);
        this.A06.setClickable(false);
        this.A00 = new Paint();
        this.A00.setStyle(Paint.Style.FILL);
        if (z) {
            this.A00.setColor(-1728053248);
        } else {
            this.A00.setColor(-1);
            this.A00.setAlpha(HttpStatus.SC_NO_CONTENT);
        }
        C0632Lh.A0P(this, 0);
        addView(this.A06);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 72.0d), (int) (((double) displayMetrics.density) * 72.0d));
        layoutParams2.addRule(13);
        setLayoutParams(layoutParams2);
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A04, this.A05, this.A03);
        }
        setOnClickListener(new View$OnClickListenerC0733Pg(this));
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A08() {
        setOnClickListener(null);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A05(this.A03, this.A05, this.A04);
        }
        super.A08();
    }

    public final void onDraw(Canvas canvas) {
        int centerX = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        int i = centerX / 2;
        canvas.drawCircle((float) (getPaddingLeft() + i), (float) (getPaddingTop() + (centerX / 2)), (float) i, this.A00);
        super.onDraw(canvas);
    }
}
