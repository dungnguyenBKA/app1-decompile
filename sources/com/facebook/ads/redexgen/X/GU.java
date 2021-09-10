package com.facebook.ads.redexgen.X;

import android.util.SparseArray;

public final class GU {
    public GO A00;
    public GQ A01;
    public final int A02;
    public final int A03;
    public final SparseArray<GN> A04 = new SparseArray<>();
    public final SparseArray<GP> A05 = new SparseArray<>();
    public final SparseArray<GN> A06 = new SparseArray<>();
    public final SparseArray<GP> A07 = new SparseArray<>();
    public final SparseArray<GS> A08 = new SparseArray<>();

    public GU(int i, int i2) {
        this.A03 = i;
        this.A02 = i2;
    }

    public final void A00() {
        this.A08.clear();
        this.A06.clear();
        this.A07.clear();
        this.A04.clear();
        this.A05.clear();
        this.A00 = null;
        this.A01 = null;
    }
}
