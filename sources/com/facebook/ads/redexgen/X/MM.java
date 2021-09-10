package com.facebook.ads.redexgen.X;

import android.view.View;

public class MM implements View.OnClickListener {
    public final /* synthetic */ MI A00;
    public final /* synthetic */ C1050ah A01;

    public MM(C1050ah ahVar, MI mi) {
        this.A01 = ahVar;
        this.A00 = mi;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                C0632Lh.A0M(this.A00);
                C0632Lh.A0O(this.A01.A0O);
                C0632Lh.A0O(this.A01.A04);
                if (this.A01.A09 != null) {
                    this.A01.A09.A0Y(PO.A03, 15);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
