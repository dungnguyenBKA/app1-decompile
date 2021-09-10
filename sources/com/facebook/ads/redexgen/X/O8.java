package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

public final class O8 extends RelativeLayout {
    public final View A00;
    public final C0691Np A01;

    public O8(XJ xj, View view) {
        super(xj);
        this.A00 = view;
        this.A01 = new C0691Np(xj);
        C0632Lh.A0N(this.A01);
    }

    public final void A00(int i) {
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, i));
    }

    public final void A01(@Nullable C0696Nu nu, boolean z) {
        this.A01.addView(this.A00, new RelativeLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, this.A00.getId());
        if (nu != null) {
            if (z) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                nu.setAlignment(3);
                layoutParams2.setMargins(AbstractC0699Nx.A08 / 2, AbstractC0699Nx.A08 / 2, AbstractC0699Nx.A08 / 2, AbstractC0699Nx.A08 / 2);
                linearLayout.addView(nu, layoutParams2);
                GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{-1778384896, 0});
                gradientDrawable.setCornerRadius(0.0f);
                gradientDrawable.setGradientType(0);
                C0632Lh.A0X(linearLayout, gradientDrawable);
            } else {
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.addRule(3, this.A01.getId());
                layoutParams3.setMargins(0, AbstractC0699Nx.A08, 0, 0);
                nu.setAlignment(17);
                addView(nu, layoutParams3);
            }
        }
        this.A01.addView(linearLayout, layoutParams);
        addView(this.A01, new RelativeLayout.LayoutParams(-1, -2));
    }
}
