package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

public final class FX {
    @Nullable
    public FX A00;
    @Nullable
    public H9 A01;
    public boolean A02;
    public final long A03;
    public final long A04;

    public FX(long j, int i) {
        this.A04 = j;
        this.A03 = ((long) i) + j;
    }

    public final int A00(long j) {
        return ((int) (j - this.A04)) + this.A01.A00;
    }

    public final FX A01() {
        this.A01 = null;
        FX fx = this.A00;
        this.A00 = null;
        return fx;
    }

    public final void A02(H9 h9, FX fx) {
        this.A01 = h9;
        this.A00 = fx;
        this.A02 = true;
    }
}
