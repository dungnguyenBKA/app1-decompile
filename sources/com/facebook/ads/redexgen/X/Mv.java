package com.facebook.ads.redexgen.X;

import android.view.View;

public class Mv implements View.OnClickListener {
    public final /* synthetic */ C0664Mn A00;
    public final /* synthetic */ C1041aY A01;

    public Mv(C1041aY aYVar, C0664Mn mn) {
        this.A01 = aYVar;
        this.A00 = mn;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A01();
                this.A01.A0A.A8H();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
