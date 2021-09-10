package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class IB extends RelativeLayout implements PP {
    public static byte[] A08;
    public static final int A09 = ((int) (C0632Lh.A01 * 6.0f));
    public int A00;
    public ObjectAnimator A01;
    public ProgressBar A02;
    public AnonymousClass9G A03;
    public AnonymousClass9G A04;
    public AnonymousClass9G A05;
    public AnonymousClass9G A06;
    @Nullable
    public PD A07;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 20);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A08 = new byte[]{-71, -69, -72, -80, -69, -82, -68, -68};
    }

    static {
        A04();
    }

    public IB(XJ xj) {
        this(xj, A09, -12549889, 0);
    }

    public IB(XJ xj, int i, int i2, int i3) {
        super(xj);
        this.A00 = -1;
        this.A06 = new AnonymousClass7K(this);
        this.A04 = new AnonymousClass7J(this);
        this.A05 = new AnonymousClass77(this);
        this.A03 = new AnonymousClass6Y(this);
        this.A02 = new ProgressBar(xj, null, 16842872);
        A09(i2, i3);
        this.A02.setMax(10000);
        addView(this.A02, new RelativeLayout.LayoutParams(-1, i));
    }

    /* access modifiers changed from: private */
    public void A02() {
        ObjectAnimator objectAnimator = this.A01;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.A01.setTarget(null);
            this.A01 = null;
            this.A02.clearAnimation();
        }
    }

    /* access modifiers changed from: private */
    public void A03() {
        int i;
        if (this.A07 != null) {
            A02();
            int progress = this.A07.getCurrentPositionInMillis();
            int duration = this.A07.getDuration();
            if (duration > 0) {
                i = (progress * 10000) / duration;
            } else {
                i = 0;
            }
            int i2 = this.A00;
            if (i2 < i && duration > progress) {
                this.A01 = ObjectAnimator.ofInt(this.A02, A01(0, 8, 53), i2, i);
                this.A01.setDuration((long) Math.min(250, duration - progress));
                this.A01.setInterpolator(new LinearInterpolator());
                this.A01.start();
                this.A00 = i;
            }
        }
    }

    public final void A07() {
        A02();
        this.A01 = ObjectAnimator.ofInt(this.A02, A01(0, 8, 53), 0, 0);
        this.A01.setDuration(0L);
        this.A01.setInterpolator(new LinearInterpolator());
        this.A01.start();
        this.A00 = -1;
    }

    public final void A08() {
        A02();
        this.A02 = null;
        this.A07 = null;
    }

    public final void A09(int i, int i2) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(i2), new ColorDrawable(i2), new ScaleDrawable(new ColorDrawable(i), 8388611, 1.0f, -1.0f)});
        layerDrawable.setId(0, 16908288);
        layerDrawable.setId(1, 16908303);
        layerDrawable.setId(2, 16908301);
        this.A02.setProgressDrawable(layerDrawable);
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void A8K(PD pd) {
        this.A07 = pd;
        pd.getEventBus().A04(this.A04, this.A05, this.A06, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void AEO(PD pd) {
        pd.getEventBus().A05(this.A06, this.A05, this.A04, this.A03);
        this.A07 = null;
    }
}
