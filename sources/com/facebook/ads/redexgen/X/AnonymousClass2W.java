package com.facebook.ads.redexgen.X;

import android.graphics.drawable.ColorDrawable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.2W  reason: invalid class name */
public final class AnonymousClass2W extends AbstractC03499g {
    public static final int A00 = ((int) (C0632Lh.A01 * 20.0f));
    public static final int A01 = ((int) (C0632Lh.A01 * 16.0f));

    public AnonymousClass2W(O1 o1, String str, RH rh) {
        super(o1, false, str, rh);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx, com.facebook.ads.redexgen.X.AbstractC03499g
    public final boolean A01() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03499g
    public final void A0h(XJ xj) {
        C0696Nu titleDescContainer = getTitleDescContainer();
        titleDescContainer.setAlignment(3);
        titleDescContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        titleDescContainer.setPadding(0, 0, 0, A00);
        getCtaButton().setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(xj);
        C0632Lh.A0X(linearLayout, new ColorDrawable(-1));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, getMediaContainer().getId());
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        int i = A01;
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(titleDescContainer);
        linearLayout.addView(getCtaButton());
        addView(getMediaContainer());
        addView(linearLayout);
    }
}
