package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;

/* renamed from: com.facebook.ads.redexgen.X.Xo  reason: case insensitive filesystem */
public class C0946Xo implements AnonymousClass8H {
    public final /* synthetic */ AnonymousClass8D A00;
    public final /* synthetic */ C0950Xs A01;

    public C0946Xo(C0950Xs xs, AnonymousClass8D r2) {
        this.A01 = xs;
        this.A00 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8H
    public final String A6V() {
        return KI.A04(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8H
    public final boolean A7x() {
        return BuildConfigApi.isDebug();
    }
}
