package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Mx  reason: case insensitive filesystem */
public class View$OnClickListenerC0673Mx implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass2B A00;
    public final /* synthetic */ C0664Mn A01;
    public final /* synthetic */ C1041aY A02;

    public View$OnClickListenerC0673Mx(C1041aY aYVar, C0664Mn mn, AnonymousClass2B r3) {
        this.A02 = aYVar;
        this.A01 = mn;
        this.A00 = r3;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A01.A01();
                this.A02.A0A.AAy(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
