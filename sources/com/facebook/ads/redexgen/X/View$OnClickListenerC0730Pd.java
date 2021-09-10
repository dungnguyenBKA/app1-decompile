package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Pd  reason: case insensitive filesystem */
public class View$OnClickListenerC0730Pd implements View.OnClickListener {
    public final /* synthetic */ IS A00;

    public View$OnClickListenerC0730Pd(IS is) {
        this.A00 = is;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A03.A03(JI.A0Z, null);
                this.A00.A02.A0A().A33();
                if (this.A00.A00 != null) {
                    if (this.A00.A08()) {
                        this.A00.A00.setVolume(1.0f);
                    } else {
                        this.A00.A00.setVolume(0.0f);
                    }
                    this.A00.A0A();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
