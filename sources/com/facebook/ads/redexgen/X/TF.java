package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class TF implements AbstractC02344j {
    public final /* synthetic */ C0469Eq A00;

    public TF(C0469Eq eq) {
        this.A00 = eq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02344j
    public final void ACa(AbstractC02274c r2, AnonymousClass4F r3, AnonymousClass4F r4) {
        this.A00.A1o(r2, r3, r4);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02344j
    public final void ACc(AbstractC02274c r2, @NonNull AnonymousClass4F r3, @Nullable AnonymousClass4F r4) {
        this.A00.A0r.A0d(r2);
        this.A00.A1p(r2, r3, r4);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02344j
    public final void ACe(AbstractC02274c r2, @NonNull AnonymousClass4F r3, @NonNull AnonymousClass4F r4) {
        r2.A0a(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0L(r2, r2, r3, r4)) {
                this.A00.A1O();
            }
        } else if (this.A00.A05.A0K(r2, r3, r4)) {
            this.A00.A1O();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02344j
    public final void AER(AbstractC02274c r4) {
        this.A00.A06.A1E(r4.A0H, this.A00.A0r);
    }
}
