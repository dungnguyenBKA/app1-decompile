package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

/* renamed from: com.facebook.ads.redexgen.X.bx  reason: case insensitive filesystem */
public class C1128bx implements JT {
    public final /* synthetic */ MediaViewVideoRendererApi A00;
    public final /* synthetic */ C1133c2 A01;

    public C1128bx(C1133c2 c2Var, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = c2Var;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override // com.facebook.ads.redexgen.X.JT
    public final void ADl() {
        this.A00.setVolume(1.0f);
    }

    @Override // com.facebook.ads.redexgen.X.JT
    public final void ADo(NativeAd nativeAd) {
        this.A01.A0J(C1143cD.A0J(nativeAd.getInternalNativeAd()), new C1132c1(C1143cD.A0J(nativeAd.getInternalNativeAd())));
    }

    @Override // com.facebook.ads.redexgen.X.JT
    public final void AEQ() {
        this.A01.A0D();
    }
}
