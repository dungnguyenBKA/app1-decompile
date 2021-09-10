package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.82  reason: invalid class name */
public class AnonymousClass82 extends AbstractC1023aG {
    public final /* synthetic */ P4 A00;

    public AnonymousClass82(P4 p4) {
        this.A00 = p4;
    }

    @Override // com.facebook.ads.redexgen.X.NV
    public final void A9R() {
    }

    @Override // com.facebook.ads.redexgen.X.NV, com.facebook.ads.redexgen.X.AbstractC1023aG
    public final void AAB(int i, @Nullable String str) {
        this.A00.A0B.set(true);
        this.A00.A09.AAf();
    }

    @Override // com.facebook.ads.redexgen.X.NV, com.facebook.ads.redexgen.X.AbstractC1023aG
    public final void AAL() {
        if (!this.A00.A0B.get() && this.A00.A0A.compareAndSet(false, true)) {
            this.A00.A09.AAL();
        }
    }

    @Override // com.facebook.ads.redexgen.X.NV
    public final void ACA() {
        this.A00.A09.ACA();
    }
}
