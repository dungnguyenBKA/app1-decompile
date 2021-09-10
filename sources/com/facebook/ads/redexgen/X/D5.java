package com.facebook.ads.redexgen.X;

public final class D5 {
    public final int A00;
    public final int A01;
    public final long A02;
    public final D2 A03;
    public final int[] A04;
    public final int[] A05;
    public final long[] A06;
    public final long[] A07;

    public D5(D2 d2, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (iArr.length == jArr2.length) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        if (jArr.length == jArr2.length) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A03(z2);
        C0551Hx.A03(iArr2.length != jArr2.length ? false : z3);
        this.A03 = d2;
        this.A06 = jArr;
        this.A05 = iArr;
        this.A00 = i;
        this.A07 = jArr2;
        this.A04 = iArr2;
        this.A02 = j;
        this.A01 = jArr.length;
    }

    public final int A00(long j) {
        for (int A0B = C0556Ic.A0B(this.A07, j, true, false); A0B >= 0; A0B--) {
            if ((this.A04[A0B] & 1) != 0) {
                return A0B;
            }
        }
        return -1;
    }

    public final int A01(long j) {
        for (int A0A = C0556Ic.A0A(this.A07, j, true, false); A0A < this.A07.length; A0A++) {
            if ((this.A04[A0A] & 1) != 0) {
                return A0A;
            }
        }
        return -1;
    }
}
