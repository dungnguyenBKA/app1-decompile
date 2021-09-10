package com.facebook.ads.redexgen.X;

import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.a5  reason: case insensitive filesystem */
public class C1012a5 extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C0688Nm A00;

    public C1012a5(C0688Nm nm) {
        this.A00 = nm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    @RequiresApi(api = VungleException.NO_SPACE_TO_INIT)
    public final void A07() {
        this.A00.setPressed(false);
        C0688Nm nm = this.A00;
        nm.postOnAnimationDelayed(C0688Nm.A03(nm), (long) C0688Nm.A01(this.A00));
    }
}
