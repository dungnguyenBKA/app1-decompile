package com.facebook.ads.redexgen.X;

public abstract class CU {
    public final CS A00;

    public abstract void A0C(IM im, long j) throws AJ;

    public abstract boolean A0D(IM im) throws AJ;

    public CU(CS cs) {
        this.A00 = cs;
    }

    public final void A00(IM im, long j) throws AJ {
        if (A0D(im)) {
            A0C(im, j);
        }
    }
}
