package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* renamed from: com.facebook.ads.redexgen.X.b7  reason: case insensitive filesystem */
public class C1076b7 implements P2 {
    public final /* synthetic */ C1075b6 A00;

    public C1076b7(C1075b6 b6Var) {
        this.A00 = b6Var;
    }

    public /* synthetic */ C1076b7(C1075b6 b6Var, C1102bX bXVar) {
        this(b6Var);
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void A9q() {
        this.A00.A0V(true);
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void AAL() {
        if (!TextUtils.isEmpty(this.A00.A09.A0T())) {
            this.A00.A0D.A8a(this.A00.A09.A0T(), new C0678Nc().A04(this.A00.A06.getViewabilityChecker()).A03(this.A00.A06.getTouchDataRecorder()).A06());
            AnonymousClass24.A00(this.A00.A09.A0V());
            this.A00.A0C.A0A().A2a();
        }
        this.A00.A0H.A3t(this.A00.A0I.A6b());
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void AAf() {
        this.A00.A0H.A3t(this.A00.A0I.A6Q());
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void ACA() {
        this.A00.A0H.A9e(15);
    }
}
