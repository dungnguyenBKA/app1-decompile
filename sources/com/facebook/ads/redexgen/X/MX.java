package com.facebook.ads.redexgen.X;

import android.view.View;

public class MX implements View.OnClickListener {
    public final /* synthetic */ C1048af A00;

    public MX(C1048af afVar) {
        this.A00 = afVar;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A05.AAC();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
