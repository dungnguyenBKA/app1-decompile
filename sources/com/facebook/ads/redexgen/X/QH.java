package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

public final class QH extends AbstractC0681Nf {
    public static final int A04 = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A05 = ((int) (C0632Lh.A01 * 16.0f));
    public int A00;
    public boolean A01;
    public boolean A02 = false;
    public final C0696Nu A03;

    public QH(XJ xj, int i, AnonymousClass1I r19, JC jc, M9 m9, boolean z, boolean z2, QE qe, C0625La la, boolean z3) {
        super(xj, i, r19, PR.A04.A02(), jc, m9, qe, la);
        boolean z4;
        boolean z5;
        boolean z6;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9);
        layoutParams.setMargins(0, 0, A04, 0);
        if (z2) {
            this.A04.setVisibility(8);
        }
        this.A00 = C0632Lh.A03(xj);
        this.A01 = z3;
        if (this.A00 == 2) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z4 || !this.A01) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (z5 || z) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.A03 = new C0696Nu(xj, r19, true, z6, true);
        this.A03.setUseNewLandscapeEndCard(this.A01);
        this.A03.setAlignment(8388611);
        if (J4.A1S(super.A02)) {
            this.A03.setDescriptionVisibility(8);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(1, this.A04.getId());
        if (!this.A01) {
            layoutParams.addRule(15);
            layoutParams2.addRule(15);
        }
        super.A01.addView(this.A04, layoutParams);
        super.A01.addView(this.A03, layoutParams2);
        if (z5) {
            addView(super.A01, new LinearLayout.LayoutParams(-2, -1, 0.7f));
            return;
        }
        addView(super.A01, new LinearLayout.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
        gradientDrawable.setCornerRadius(0.0f);
        C0632Lh.A0X(this, gradientDrawable);
    }

    /* JADX INFO: Multiple debug info for r1v7 android.graphics.drawable.GradientDrawable: [D('buttonParams' android.widget.LinearLayout$LayoutParams), D('gd' android.graphics.drawable.GradientDrawable)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0E(int i) {
        boolean z;
        int i2;
        LinearLayout.LayoutParams layoutParams;
        C0632Lh.A0M(super.A03);
        int i3 = 1;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        int i4 = -1;
        if (this.A01) {
            this.A00 = i;
            setOrientation(1);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            if (!this.A02 || z) {
                GradientDrawable gd = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
                gd.setCornerRadius(0.0f);
                C0632Lh.A0X(this, gd);
            } else {
                layoutParams2.weight = 0.7f;
                setBackgroundResource(0);
                C0632Lh.A0P(this, -447721392);
            }
            super.A01.setLayoutParams(layoutParams2);
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, A05, 0, 0);
            bringToFront();
        } else {
            if (!z) {
                i3 = 0;
            }
            setOrientation(i3);
            if (z) {
                i2 = -1;
            } else {
                i2 = 0;
            }
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i2, -2);
            layoutParams3.weight = 1.0f;
            super.A01.setLayoutParams(layoutParams3);
            if (!z) {
                i4 = -2;
            }
            layoutParams = new LinearLayout.LayoutParams(i4, -2);
            layoutParams.setMargins(z ? 0 : A05, z ? A05 : 0, 0, 0);
        }
        layoutParams.gravity = 80;
        addView(super.A03, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public final void A0F(boolean z) {
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0681Nf
    public void setInfo(AnonymousClass1G r11, AnonymousClass1J r12, String str, String str2, @Nullable AbstractC0684Ni ni) {
        super.setInfo(r11, r12, str, str2, ni);
        this.A03.A02(r11.A06(), r11.A05(), null, false, false);
        if (TextUtils.isEmpty(r12.A03())) {
            C0632Lh.A0K(super.A03);
        }
    }
}
