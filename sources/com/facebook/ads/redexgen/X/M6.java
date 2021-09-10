package com.facebook.ads.redexgen.X;

import android.view.View;

public class M6 implements View.OnClickListener {
    public final /* synthetic */ C1175ck A00;

    public M6(C1175ck ckVar) {
        this.A00 = ckVar;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (this.A00.A00 != null && this.A00.A04.A03()) {
                    this.A00.A00.A9k();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
