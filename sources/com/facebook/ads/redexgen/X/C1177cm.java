package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.cm  reason: case insensitive filesystem */
public class C1177cm implements AbstractC02494y {
    public final /* synthetic */ C1180cp A00;

    public C1177cm(C1180cp cpVar) {
        this.A00 = cpVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02494y
    public final boolean A7u() {
        if (!this.A00.A0B.canGoBack()) {
            return false;
        }
        this.A00.A0B.goBack();
        return true;
    }
}
