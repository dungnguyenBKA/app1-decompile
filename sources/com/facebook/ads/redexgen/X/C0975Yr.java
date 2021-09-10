package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Yr  reason: case insensitive filesystem */
public final class C0975Yr implements CS {
    @Override // com.facebook.ads.redexgen.X.CS
    public final void A5P(Format format) {
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final int ADQ(CH ch, int i, boolean z) throws IOException, InterruptedException {
        int AE0 = ch.AE0(i);
        if (AE0 != -1) {
            return AE0;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final void ADR(IM im, int i) {
        im.A0a(i);
    }

    @Override // com.facebook.ads.redexgen.X.CS
    public final void ADS(long j, int i, int i2, int i3, CR cr) {
    }
}
