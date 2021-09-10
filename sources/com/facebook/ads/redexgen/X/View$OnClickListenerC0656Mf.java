package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Mf  reason: case insensitive filesystem */
public class View$OnClickListenerC0656Mf implements View.OnClickListener {
    public final /* synthetic */ C0659Mi A00;

    public View$OnClickListenerC0656Mf(C0659Mi mi) {
        this.A00 = mi;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (this.A00.A04) {
                    this.A00.A03.A43();
                } else {
                    this.A00.A03.A44();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
