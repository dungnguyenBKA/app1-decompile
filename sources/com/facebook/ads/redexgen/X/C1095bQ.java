package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.bQ  reason: case insensitive filesystem */
public final class C1095bQ implements HI {
    public final int A00;
    public final HI A01;
    public final IQ A02;

    public C1095bQ(HI hi, IQ iq, int i) {
        this.A01 = (HI) C0551Hx.A01(hi);
        this.A02 = (IQ) C0551Hx.A01(iq);
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.HI
    @Nullable
    public final Uri A7R() {
        return this.A01.A7R();
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final long ACC(HM hm) throws IOException {
        this.A02.A02(this.A00);
        return this.A01.ACC(hm);
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final void close() throws IOException {
        this.A01.close();
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        this.A02.A02(this.A00);
        return this.A01.read(bArr, i, i2);
    }
}
