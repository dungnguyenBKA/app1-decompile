package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.2e  reason: invalid class name and case insensitive filesystem */
public final class C01782e extends AbstractC03499g {
    public static final int A00 = ((int) (C0632Lh.A01 * 12.0f));

    public C01782e(O1 o1, String str, RH rh) {
        super(o1, true, str, rh);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A00() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx, com.facebook.ads.redexgen.X.AbstractC03499g
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03499g
    public final void A0h(XJ xj) {
        C0696Nu titleDescContainer = getTitleDescContainer();
        titleDescContainer.setAlignment(3);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, getMediaContainer().getId());
        titleDescContainer.setLayoutParams(layoutParams);
        int i = A00;
        titleDescContainer.setPadding(i, i, i, i);
        C0632Lh.A0W(titleDescContainer, getAdContextWrapper());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, getMediaContainer().getId());
        getCtaButton().setLayoutParams(layoutParams2);
        addView(getMediaContainer());
        addView(titleDescContainer);
        addView(getCtaButton());
    }
}
