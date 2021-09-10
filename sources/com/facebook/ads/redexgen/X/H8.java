package com.facebook.ads.redexgen.X;

public final class H8 {
    public final int A00;
    public final H5 A01;
    public final Object A02;
    public final AZ[] A03;

    public H8(AZ[] azArr, H4[] h4Arr, Object obj) {
        this.A03 = azArr;
        this.A01 = new H5(h4Arr);
        this.A02 = obj;
        this.A00 = azArr.length;
    }

    public final boolean A00(int i) {
        return this.A03[i] != null;
    }

    public final boolean A01(H8 h8) {
        if (h8 == null || h8.A01.A01 != this.A01.A01) {
            return false;
        }
        for (int i = 0; i < this.A01.A01; i++) {
            if (!A02(h8, i)) {
                return false;
            }
        }
        return true;
    }

    public final boolean A02(H8 h8, int i) {
        if (h8 != null && C0556Ic.A0h(this.A03[i], h8.A03[i]) && C0556Ic.A0h(this.A01.A01(i), h8.A01.A01(i))) {
            return true;
        }
        return false;
    }
}
