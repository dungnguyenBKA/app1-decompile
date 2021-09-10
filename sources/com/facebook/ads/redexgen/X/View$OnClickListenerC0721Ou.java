package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ou  reason: case insensitive filesystem */
public class View$OnClickListenerC0721Ou implements View.OnClickListener {
    public final /* synthetic */ C0722Ov A00;

    public View$OnClickListenerC0721Ou(C0722Ov ov) {
        this.A00 = ov;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A04.performClick();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
