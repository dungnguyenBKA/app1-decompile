package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Tn  reason: case insensitive filesystem */
public class C0841Tn implements AnonymousClass75 {
    public final List<C0794Rp> A00;
    public final /* synthetic */ C0842To A01;

    public C0841Tn(C0842To to, List<C0794Rp> list) {
        this.A01 = to;
        this.A00 = list;
    }

    private void A00() {
        this.A01.A00.A07(true);
        this.A01.A00.A04();
        this.A01.A00.A05(0);
        for (C0794Rp rp : this.A00) {
            this.A01.A00.A06(new NativeAd(this.A01.A01, new C1143cD(this.A01.A01, rp, null, C1143cD.A0I(), this.A01.A00.A03())));
        }
        KS.A00(new Tm(this));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9h() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9o() {
        A00();
    }
}
