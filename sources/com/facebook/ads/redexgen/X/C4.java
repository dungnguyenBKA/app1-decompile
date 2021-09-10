package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;

public final class C4 extends AbstractC1025aI implements F9 {
    public long A00;
    public boolean A01;
    public final int A02;
    public final int A03;
    public final Uri A04;
    public final CJ A05;
    public final HH A06;
    @Nullable
    public final Object A07;
    public final String A08;

    public C4(Uri uri, HH hh, CJ cj, int i, @Nullable String str, int i2, @Nullable Object obj) {
        this.A04 = uri;
        this.A06 = hh;
        this.A05 = cj;
        this.A03 = i;
        this.A08 = str;
        this.A02 = i2;
        this.A00 = -9223372036854775807L;
        this.A07 = obj;
    }

    private void A00(long j, boolean z) {
        this.A00 = j;
        this.A01 = z;
        A01(new C1043aa(this.A00, this.A01, false, this.A07), null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1025aI
    public final void A02() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1025aI
    public final void A03(YF yf, boolean z) {
        A00(this.A00, false);
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final AbstractC1039aW A4Q(FC fc, HA ha) {
        boolean z;
        if (fc.A02 == 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        return new C5(this.A04, this.A06.A4E(), this.A05.A4I(), this.A03, A00(fc), this, ha, this.A08, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void A91() throws IOException {
    }

    @Override // com.facebook.ads.redexgen.X.F9
    public final void ABd(long j, boolean z) {
        if (j == -9223372036854775807L) {
            j = this.A00;
        }
        if (this.A00 != j || this.A01 != z) {
            A00(j, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FE
    public final void AD4(AbstractC1039aW aWVar) {
        ((C5) aWVar).A0S();
    }
}
