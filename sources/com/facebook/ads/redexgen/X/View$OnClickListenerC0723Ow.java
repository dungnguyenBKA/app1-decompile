package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ow  reason: case insensitive filesystem */
public class View$OnClickListenerC0723Ow implements View.OnClickListener {
    public final /* synthetic */ C0726Oz A00;

    public View$OnClickListenerC0723Ow(C0726Oz oz) {
        this.A00 = oz;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A02.ABl(this.A00.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
