package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.source.TrackGroup;

/* renamed from: com.facebook.ads.redexgen.X.Bd  reason: case insensitive filesystem */
public final class C0397Bd extends AbstractC1070b1 {
    public float A00 = 1.0f;
    public int A01 = 1;
    public int A02 = A00(Long.MIN_VALUE);
    public long A03 = -9223372036854775807L;
    public final float A04;
    public final float A05;
    public final long A06;
    public final long A07;
    public final long A08;
    public final long A09;
    public final HD A0A;
    public final I0 A0B;

    public C0397Bd(TrackGroup trackGroup, int[] iArr, HD hd, long j, long j2, long j3, float f, float f2, long j4, I0 i0) {
        super(trackGroup, iArr);
        this.A0A = hd;
        this.A07 = j * 1000;
        this.A06 = j2 * 1000;
        this.A08 = 1000 * j3;
        this.A04 = f;
        this.A05 = f2;
        this.A09 = j4;
        this.A0B = i0;
    }

    private int A00(long j) {
        long A5g = (long) (((float) this.A0A.A5g()) * this.A04);
        int i = 0;
        for (int i2 = 0; i2 < super.A03; i2++) {
            if (j == Long.MIN_VALUE || !A02(i2, j)) {
                if (((long) Math.round(((float) A6X(i2).A04) * this.A00)) <= A5g) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.H4, com.facebook.ads.redexgen.X.AbstractC1070b1
    public final void A57() {
        this.A03 = -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.H4
    public final int A79() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.H4, com.facebook.ads.redexgen.X.AbstractC1070b1
    public final void AB8(float f) {
        this.A00 = f;
    }
}
