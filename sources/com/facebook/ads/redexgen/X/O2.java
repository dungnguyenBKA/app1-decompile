package com.facebook.ads.redexgen.X;

import android.view.View;

public class O2 implements View.OnClickListener {
    public final /* synthetic */ C03559m A00;

    public O2(C03559m r1) {
        this.A00 = r1;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                C03559m.A0H(this.A00, false);
                if (C03559m.A01(this.A00) != null) {
                    C0632Lh.A0O(C03559m.A01(this.A00));
                }
                C0632Lh.A0Q(C03559m.A03(this.A00), 0);
                C0632Lh.A0Q(C03559m.A05(this.A00), 0);
                C0632Lh.A0Q(this.A00.getAdDetailsView(), 0);
                C0632Lh.A0M(C03559m.A00(this.A00));
                C03559m.A03(this.A00).A0Y(PO.A03, 14);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
