package com.facebook.ads.redexgen.X;

import android.view.View;

public class N0 implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass2B A00;
    public final /* synthetic */ C0664Mn A01;
    public final /* synthetic */ N1 A02;

    public N0(N1 n1, C0664Mn mn, AnonymousClass2B r3) {
        this.A02 = n1;
        this.A01 = mn;
        this.A00 = r3;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A01.A01();
                this.A02.A02.AAy(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
