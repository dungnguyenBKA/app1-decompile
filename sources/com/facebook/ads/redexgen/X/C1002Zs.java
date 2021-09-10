package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Zs  reason: case insensitive filesystem */
public final class C1002Zs implements CP {
    public long A00;
    public long A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;

    public C1002Zs(int i, int i2, int i3, int i4, int i5, int i6) {
        this.A06 = i;
        this.A07 = i2;
        this.A02 = i3;
        this.A04 = i4;
        this.A03 = i5;
        this.A05 = i6;
    }

    public final int A00() {
        return this.A07 * this.A03 * this.A06;
    }

    public final int A01() {
        return this.A04;
    }

    public final int A02() {
        return this.A05;
    }

    public final int A03() {
        return this.A06;
    }

    public final int A04() {
        return this.A07;
    }

    public final long A05(long j) {
        return (1000000 * Math.max(0L, j - this.A01)) / ((long) this.A02);
    }

    public final void A06(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean A07() {
        return (this.A01 == 0 || this.A00 == 0) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return (1000000 * (this.A00 / ((long) this.A04))) / ((long) this.A07);
    }

    /* JADX INFO: Multiple debug info for r3v5 long: [D('seekTimeUs' long), D('seekPoint' com.facebook.ads.redexgen.X.CQ)] */
    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long j) {
        int i = this.A04;
        long A0E = C0556Ic.A0E((((((long) this.A02) * j) / 1000000) / ((long) i)) * ((long) i), 0, this.A00 - ((long) i));
        long j2 = this.A01 + A0E;
        long seekTimeUs = A05(j2);
        CQ cq = new CQ(seekTimeUs, j2);
        if (seekTimeUs < j) {
            long j3 = this.A00;
            int i2 = this.A04;
            if (A0E != j3 - ((long) i2)) {
                long j4 = ((long) i2) + j2;
                return new CO(cq, new CQ(A05(j4), j4));
            }
        }
        return new CO(cq);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return true;
    }
}
