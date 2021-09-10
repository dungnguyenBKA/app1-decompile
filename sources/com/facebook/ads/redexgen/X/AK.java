package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;

public final class AK {
    public final int A00;
    public final long A01;
    public final long A02;
    public final AbstractC0373Af A03;
    public final FC A04;
    public final TrackGroupArray A05;
    public final H8 A06;
    @Nullable
    public final Object A07;
    public final boolean A08;
    public volatile long A09;
    public volatile long A0A;

    public AK(AbstractC0373Af af, long j, TrackGroupArray trackGroupArray, H8 h8) {
        this(af, null, new FC(0), j, -9223372036854775807L, 1, false, trackGroupArray, h8);
    }

    public AK(AbstractC0373Af af, @Nullable Object obj, FC fc, long j, long j2, int i, boolean z, TrackGroupArray trackGroupArray, H8 h8) {
        this.A03 = af;
        this.A07 = obj;
        this.A04 = fc;
        this.A02 = j;
        this.A01 = j2;
        this.A0A = j;
        this.A09 = j;
        this.A00 = i;
        this.A08 = z;
        this.A05 = trackGroupArray;
        this.A06 = h8;
    }

    public static void A00(AK ak, AK ak2) {
        ak2.A0A = ak.A0A;
        ak2.A09 = ak.A09;
    }

    public final AK A01(int i) {
        AK ak = new AK(this.A03, this.A07, this.A04.A01(i), this.A02, this.A01, this.A00, this.A08, this.A05, this.A06);
        A00(this, ak);
        return ak;
    }

    public final AK A02(int i) {
        AK ak = new AK(this.A03, this.A07, this.A04, this.A02, this.A01, i, this.A08, this.A05, this.A06);
        A00(this, ak);
        return ak;
    }

    public final AK A03(AbstractC0373Af af, Object obj) {
        AK ak = new AK(af, obj, this.A04, this.A02, this.A01, this.A00, this.A08, this.A05, this.A06);
        A00(this, ak);
        return ak;
    }

    public final AK A04(FC fc, long j, long j2) {
        long j3 = j2;
        AbstractC0373Af af = this.A03;
        Object obj = this.A07;
        if (!fc.A02()) {
            j3 = -9223372036854775807L;
        }
        return new AK(af, obj, fc, j, j3, this.A00, this.A08, this.A05, this.A06);
    }

    public final AK A05(TrackGroupArray trackGroupArray, H8 h8) {
        AK ak = new AK(this.A03, this.A07, this.A04, this.A02, this.A01, this.A00, this.A08, trackGroupArray, h8);
        A00(this, ak);
        return ak;
    }

    public final AK A06(boolean z) {
        AK ak = new AK(this.A03, this.A07, this.A04, this.A02, this.A01, this.A00, z, this.A05, this.A06);
        A00(this, ak);
        return ak;
    }
}
