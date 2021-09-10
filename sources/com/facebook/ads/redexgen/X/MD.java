package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;

public class MD implements View.OnClickListener {
    public final /* synthetic */ FullScreenAdToolbar A00;

    public MD(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (FullScreenAdToolbar.A00(this.A00) != null && FullScreenAdToolbar.A01(this.A00).A03()) {
                    FullScreenAdToolbar.A00(this.A00).A9k();
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
