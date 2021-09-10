package com.facebook.ads.redexgen.X;

import android.view.View;

public class N2 implements View.OnClickListener {
    public final /* synthetic */ C1037aU A00;

    public N2(C1037aU aUVar) {
        this.A00 = aUVar;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A0A.A7S();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
