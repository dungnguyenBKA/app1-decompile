package com.facebook.ads.redexgen.X;

import android.view.View;

public class M7 implements View.OnClickListener {
    public final /* synthetic */ DialogC1173ci A00;
    public final /* synthetic */ C1175ck A01;
    public final /* synthetic */ MT A02;

    public M7(C1175ck ckVar, MT mt, DialogC1173ci ciVar) {
        this.A01 = ckVar;
        this.A02 = mt;
        this.A00 = ciVar;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A02.A9N();
                this.A00.hide();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
