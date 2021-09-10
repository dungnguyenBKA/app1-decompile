package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Yt  reason: case insensitive filesystem */
public final class C0977Yt implements CP {
    public final long A00;
    public final CO A01;

    public C0977Yt(long j) {
        this(j, 0);
    }

    public C0977Yt(long j, long j2) {
        CQ cq;
        this.A00 = j;
        if (j2 == 0) {
            cq = CQ.A04;
        } else {
            cq = new CQ(0, j2);
        }
        this.A01 = new CO(cq);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long j) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return false;
    }
}
