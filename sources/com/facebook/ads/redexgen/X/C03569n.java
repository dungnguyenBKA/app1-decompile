package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.9n  reason: invalid class name and case insensitive filesystem */
public final class C03569n extends AbstractC0970Ym {
    public static final int A02 = Resources.getSystem().getDisplayMetrics().widthPixels;
    public final View A00;
    public final boolean A01;

    public C03569n(O1 o1, boolean z) {
        super(o1, true);
        this.A01 = z;
        this.A00 = o1.A02();
        A0d();
        if (this.A01) {
            addView(o1.A02(), new RelativeLayout.LayoutParams(-1, -1));
        } else {
            FrameLayout frameLayout = new FrameLayout(o1.A05());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(2, getAdDetailsView().getId());
            frameLayout.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 17;
            layoutParams2.setMargins(AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08, 0);
            frameLayout.addView(this.A00, layoutParams2);
            addView(frameLayout);
        }
        getAdDetailsView().bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A02() {
        return this.A01 && super.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0A() {
        return this.A01 && super.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0970Ym, com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Z(AnonymousClass19 r5, String str, double d, @Nullable Bundle bundle) {
        super.A0Z(r5, str, d, bundle);
        if (!this.A01 && d > 0.0d) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) (((double) (A02 - (AbstractC0699Nx.A08 * 2))) / d));
            layoutParams.gravity = 17;
            layoutParams.setMargins(AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08, 0);
            this.A00.setLayoutParams(layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return this.A01;
    }
}
