package com.facebook.ads.redexgen.X;

import android.view.View;

public class N9 implements View.OnClickListener {
    public final /* synthetic */ NE A00;

    public N9(NE ne) {
        this.A00 = ne;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (this.A00.A04 != null) {
                    this.A00.A04.A9k();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
