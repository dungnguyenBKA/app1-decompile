package com.facebook.ads.redexgen.X;

public class ZI implements CP {
    public final /* synthetic */ ZJ A00;

    public ZI(ZJ zj) {
        this.A00 = zj;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return this.A00.A0B.A04(this.A00.A07);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long granule) {
        if (granule == 0) {
            return new CO(new CQ(0, this.A00.A09));
        }
        long A05 = this.A00.A0B.A05(granule);
        ZJ zj = this.A00;
        return new CO(new CQ(granule, zj.A00(zj.A09, A05, 30000)));
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return true;
    }
}
