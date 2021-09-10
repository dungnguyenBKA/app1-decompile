package com.facebook.ads.redexgen.X;

import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.a6  reason: case insensitive filesystem */
public class C1013a6 extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C0688Nm A00;

    public C1013a6(C0688Nm nm) {
        this.A00 = nm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    @RequiresApi(api = VungleException.NO_SPACE_TO_INIT)
    public final void A07() {
        if (this.A00.isPressed()) {
            C0688Nm nm = this.A00;
            nm.postDelayed(this, (long) C0688Nm.A01(nm));
            return;
        }
        this.A00.setPressed(true);
        C0688Nm nm2 = this.A00;
        nm2.postOnAnimationDelayed(C0688Nm.A02(nm2), 250);
    }
}
