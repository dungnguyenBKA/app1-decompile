package com.facebook.ads.redexgen.X;

import android.view.View;

public class NA implements View.OnClickListener {
    public final /* synthetic */ NE A00;

    public NA(NE ne) {
        this.A00 = ne;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (this.A00.A08.canGoBack()) {
                    this.A00.A08.goBack();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
