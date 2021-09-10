package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.bA  reason: case insensitive filesystem */
public final class C1079bA implements HA {
    public static byte[] A08;
    public static String[] A09;
    public int A00;
    public int A01;
    public int A02;
    public H9[] A03;
    public final int A04;
    public final boolean A05;
    public final byte[] A06;
    public final H9[] A07;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 123);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A08 = new byte[]{-69, -81, -2, 23, 14, 33, 25, 14, 12, 29, 14, 13, -55, 10, 21, 21, 24, 12, 10, 29, 18, 24, 23, -29, -55};
    }

    public static void A02() {
        A09 = new String[]{"4ve0RWyhYyl9xCQBcFEHHb6J5", "0", "sHlJnKRUCXWWG8DJxhYmJcdBG87KccAz", "Y1hOWn5yAZG8wtugOKE5SlkzB9Lmm", "ccLKzhNJONN8hN3GMkJFYY9R9j4tosDy", "kB2MLz2Qt2VhBov62BdjLbPbFvH", "HEcEuygojM8kHr", "TVH0enYaQUtbllarZb7wcHSuDyXsicXL"};
    }

    public C1079bA(boolean z, int i) {
        this(z, i, 0);
    }

    public C1079bA(boolean z, int i, int i2) {
        boolean z2;
        boolean z3 = false;
        if (i > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A03(z2);
        C0551Hx.A03(i2 >= 0 ? true : z3);
        this.A05 = z;
        this.A04 = i;
        this.A01 = i2;
        this.A03 = new H9[(i2 + 100)];
        if (i2 > 0) {
            this.A06 = new byte[(i2 * i)];
            for (int i3 = 0; i3 < i2; i3++) {
                this.A03[i3] = new H9(this.A06, i3 * i);
            }
        } else {
            this.A06 = null;
        }
        this.A07 = new H9[1];
    }

    public final synchronized int A03() {
        int i;
        i = this.A00 * this.A04;
        String[] strArr = A09;
        if (strArr[3].length() != strArr[5].length()) {
            String[] strArr2 = A09;
            strArr2[0] = "5S97W7P0mYMCYwMDzMcet6TY3";
            strArr2[1] = "7";
        } else {
            throw new RuntimeException();
        }
        return i;
    }

    public final synchronized void A04() {
        if (this.A05) {
            A05(0);
        }
    }

    public final synchronized void A05(int i) {
        boolean z = i < this.A02;
        this.A02 = i;
        if (z) {
            AEN();
        }
    }

    @Override // com.facebook.ads.redexgen.X.HA
    public final synchronized H9 A3O() {
        H9 h9;
        this.A00++;
        if (this.A01 > 0) {
            H9[] h9Arr = this.A03;
            int i = this.A01 - 1;
            this.A01 = i;
            h9 = h9Arr[i];
            this.A03[this.A01] = null;
        } else {
            h9 = new H9(new byte[this.A04], 0);
        }
        return h9;
    }

    @Override // com.facebook.ads.redexgen.X.HA
    public final int A6d() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.HA
    public final synchronized void AD0(H9 h9) {
        this.A07[0] = h9;
        AD1(this.A07);
        String[] strArr = A09;
        if (strArr[0].length() != strArr[1].length()) {
            A09[2] = "vTQnHDwqIVvtvGKS6QPwZVkZoK1Lgm5f";
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.HA
    public final synchronized void AD1(H9[] h9Arr) {
        if (this.A01 + h9Arr.length >= this.A03.length) {
            this.A03 = (H9[]) Arrays.copyOf(this.A03, Math.max(this.A03.length * 2, this.A01 + h9Arr.length));
        }
        for (H9 h9 : h9Arr) {
            if (h9.A01 == this.A06 || h9.A01.length == this.A04) {
                H9[] h9Arr2 = this.A03;
                int i = this.A01;
                this.A01 = i + 1;
                h9Arr2[i] = h9;
            } else {
                throw new IllegalArgumentException(A00(2, 23, 46) + System.identityHashCode(h9.A01) + A00(0, 2, 20) + System.identityHashCode(this.A06) + A00(0, 2, 20) + h9.A01.length + A00(0, 2, 20) + this.A04);
            }
        }
        this.A00 -= h9Arr.length;
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.HA
    public final synchronized void AEN() {
        int lowIndex = Math.max(0, C0556Ic.A04(this.A02, this.A04) - this.A00);
        if (lowIndex < this.A01) {
            if (this.A06 != null) {
                int i = 0;
                int i2 = this.A01 - 1;
                while (i <= i2) {
                    H9 h9 = this.A03[i];
                    if (h9.A01 == this.A06) {
                        i++;
                    } else {
                        H9 h92 = this.A03[i2];
                        if (h92.A01 != this.A06) {
                            i2--;
                        } else {
                            this.A03[i] = h92;
                            this.A03[i2] = h9;
                            i2--;
                            i++;
                        }
                    }
                }
                lowIndex = Math.max(lowIndex, i);
                if (lowIndex >= this.A01) {
                    return;
                }
            }
            Arrays.fill(this.A03, lowIndex, this.A01, (Object) null);
            this.A01 = lowIndex;
        }
    }
}
