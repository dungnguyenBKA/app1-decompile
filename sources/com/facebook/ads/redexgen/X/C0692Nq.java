package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;

/* renamed from: com.facebook.ads.redexgen.X.Nq  reason: case insensitive filesystem */
public final class C0692Nq extends LinearLayout {
    public static final int A06 = ((int) (C0632Lh.A01 * 4.0f));
    public int A00 = A06;
    public final int A01;
    public final int A02;
    public final int A03;
    public final XJ A04;
    public final C0693Nr[] A05;

    public C0692Nq(XJ xj, int i, int i2, int i3, int i4) {
        super(xj);
        this.A04 = xj;
        setOrientation(0);
        this.A03 = i;
        this.A01 = i3;
        this.A02 = i4;
        this.A05 = new C0693Nr[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.A05[i5] = A00();
            addView(this.A05[i5]);
        }
        A01();
    }

    private C0693Nr A00() {
        C0693Nr nr = new C0693Nr(this.A04, this.A01, this.A02);
        int i = this.A03;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 16;
        nr.setLayoutParams(layoutParams);
        return nr;
    }

    private void A01() {
        int i;
        int i2 = 0;
        while (true) {
            C0693Nr[] nrArr = this.A05;
            if (i2 < nrArr.length) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) nrArr[i2].getLayoutParams();
                if (i2 == 0) {
                    i = 0;
                } else {
                    i = this.A00;
                }
                layoutParams.leftMargin = i;
                i2++;
            } else {
                requestLayout();
                return;
            }
        }
    }

    private void A02(float f) {
        for (int i = 0; i < this.A05.length; i++) {
            float min = Math.min(1.0f, f - ((float) i));
            if (min < 0.0f) {
                min = 0.0f;
            }
            this.A05[i].setFillRatio(min);
        }
    }

    public void setItemSpacing(int i) {
        this.A00 = i;
        A01();
    }

    public void setRating(float f) {
        A02(f);
    }
}
