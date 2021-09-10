package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Mt  reason: case insensitive filesystem */
public class View$OnClickListenerC0670Mt implements View.OnClickListener {
    public final /* synthetic */ C0664Mn A00;
    public final /* synthetic */ C1041aY A01;

    public View$OnClickListenerC0670Mt(C1041aY aYVar, C0664Mn mn) {
        this.A01 = aYVar;
        this.A00 = mn;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A01();
                this.A01.A0A.AAp(AnonymousClass29.A03);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
