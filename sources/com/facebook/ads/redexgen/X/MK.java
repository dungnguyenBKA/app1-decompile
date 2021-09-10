package com.facebook.ads.redexgen.X;

import android.view.View;

public class MK implements View.OnClickListener {
    public final /* synthetic */ C1075b6 A00;

    public MK(C1075b6 b6Var) {
        this.A00 = b6Var;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A0V(false);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
