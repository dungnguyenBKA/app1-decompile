package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Pg  reason: case insensitive filesystem */
public class View$OnClickListenerC0733Pg implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass7L A00;

    public View$OnClickListenerC0733Pg(AnonymousClass7L r1) {
        this.A00 = r1;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (this.A00.getVideoView() != null) {
                    if (this.A00.A02 != null) {
                        this.A00.A02.A03(JI.A0l, null);
                    }
                    this.A00.A01.A0A().A2x();
                    int i = C0734Ph.A00[this.A00.getVideoView().getState().ordinal()];
                    if (i == 1 || i == 2 || i == 3 || i == 4) {
                        this.A00.getVideoView().A0Y(PO.A05, 12);
                    } else if (i == 5) {
                        this.A00.getVideoView().A0b(true, 8);
                    }
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
