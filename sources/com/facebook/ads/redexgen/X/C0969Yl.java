package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Yl  reason: case insensitive filesystem */
public final class C0969Yl extends AbstractC0699Nx {
    public C0969Yl(O1 o1, boolean z) {
        super(o1, true);
        int i;
        int i2;
        int i3;
        int i4;
        RelativeLayout relativeLayout = new RelativeLayout(o1.A05());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        C0632Lh.A0W(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(o1.A05());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        C0632Lh.A0N(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08, AbstractC0699Nx.A08);
        if (z) {
            i = -2;
        } else {
            i = -1;
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i, -2);
        if (z) {
            i2 = AbstractC0699Nx.A08;
        } else {
            i2 = 0;
        }
        if (z) {
            i3 = 0;
        } else {
            i3 = AbstractC0699Nx.A08;
        }
        layoutParams3.setMargins(i2, i3, 0, 0);
        if (z) {
            i4 = 0;
        } else {
            i4 = -1;
        }
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i4, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        addView(o1.A02(), new RelativeLayout.LayoutParams(-1, -1));
        addView(relativeLayout, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Z(AnonymousClass19 r1, String str, double d, @Nullable Bundle bundle) {
        super.A0Z(r1, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return true;
    }
}
