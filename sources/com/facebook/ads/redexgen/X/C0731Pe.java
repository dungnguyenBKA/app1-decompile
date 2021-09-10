package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.Pe  reason: case insensitive filesystem */
public final class C0731Pe extends C0691Np {
    public final ImageView A00;
    public final XJ A01;

    public C0731Pe(XJ xj) {
        super(xj);
        this.A01 = xj;
        this.A00 = new ImageView(xj);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        AsyncTaskC1017aA aAVar = new AsyncTaskC1017aA(this.A00, this.A01);
        aAVar.A05();
        aAVar.A08(str);
    }
}
