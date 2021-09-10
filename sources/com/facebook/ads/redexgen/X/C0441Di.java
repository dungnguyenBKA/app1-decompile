package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Di  reason: case insensitive filesystem */
public final class C0441Di implements Z7 {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;

    public C0441Di(long j, long j2, CM cm) {
        this.A04 = j2;
        this.A01 = cm.A02;
        this.A00 = cm.A00;
        if (j == -1) {
            this.A02 = -1;
            this.A03 = -9223372036854775807L;
            return;
        }
        this.A02 = j - j2;
        this.A03 = A7L(j);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long positionOffset) {
        long j = this.A02;
        if (j == -1) {
            return new CO(new CQ(0, this.A04));
        }
        int i = this.A01;
        long A0E = C0556Ic.A0E((((((long) this.A00) * positionOffset) / 8000000) / ((long) i)) * ((long) i), 0, j - ((long) i));
        long j2 = this.A04 + A0E;
        long A7L = A7L(j2);
        CQ seekPoint = new CQ(A7L, j2);
        if (A7L < positionOffset) {
            long j3 = this.A02;
            int i2 = this.A01;
            if (A0E != j3 - ((long) i2)) {
                long j4 = ((long) i2) + j2;
                return new CO(seekPoint, new CQ(A7L(j4), j4));
            }
        }
        return new CO(seekPoint);
    }

    @Override // com.facebook.ads.redexgen.X.Z7
    public final long A7L(long j) {
        return ((Math.max(0L, j - this.A04) * 1000000) * 8) / ((long) this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return this.A02 != -1;
    }
}
