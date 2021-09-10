package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.vungle.warren.AdLoader;

/* renamed from: com.facebook.ads.redexgen.X.Yi  reason: case insensitive filesystem */
public class C0966Yi extends AbstractRunnableC0603Kb {
    public final /* synthetic */ YV A00;

    public C0966Yi(YV yv) {
        this.A00 = yv;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        C0632Lh.A0I(AdError.NETWORK_ERROR_CODE, this.A00.A0F);
        this.A00.postDelayed(this, AdLoader.RETRY_DELAY);
    }
}
