package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;

/* renamed from: com.facebook.ads.redexgen.X.Xf  reason: case insensitive filesystem */
public class C0937Xf extends AbstractRunnableC0603Kb {
    public final /* synthetic */ XK A00;

    public C0937Xf(XK xk) {
        this.A00 = xk;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
