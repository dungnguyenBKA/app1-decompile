package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Yk  reason: case insensitive filesystem */
public final class C0968Yk extends AbstractC0699Nx {
    public static final int A01 = Resources.getSystem().getDisplayMetrics().widthPixels;
    public final O8 A00;

    public C0968Yk(O1 o1, boolean z) {
        super(o1, z);
        this.A00 = new O8(o1.A05(), o1.A02());
        this.A00.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC0699Nx.A08, AbstractC0699Nx.A08, AbstractC0699Nx.A08, AbstractC0699Nx.A08);
        getCtaButton().setLayoutParams(layoutParams);
        FrameLayout frameLayout = new FrameLayout(o1.A05());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, getCtaButton().getId());
        frameLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08, 0);
        frameLayout.addView(this.A00, layoutParams3);
        addView(frameLayout);
        addView(getCtaButton());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A02() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Z(AnonymousClass19 r5, String str, double d, @Nullable Bundle bundle) {
        super.A0Z(r5, str, d, bundle);
        if (d > 0.0d) {
            this.A00.A00((int) (((double) (A01 - (AbstractC0699Nx.A08 * 2))) / d));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return false;
    }
}
