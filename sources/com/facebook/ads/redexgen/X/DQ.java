package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.util.Arrays;

public final class DQ {
    public static String[] A0I;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public DP A06 = new DP();
    public DP A07 = new DP();
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public byte[] A0B = new byte[128];
    public final SparseArray<IG> A0C = new SparseArray<>();
    public final SparseArray<IH> A0D = new SparseArray<>();
    public final CS A0E;
    public final IN A0F = new IN(this.A0B, 0, 0);
    public final boolean A0G;
    public final boolean A0H;

    static {
        A00();
    }

    public static void A00() {
        A0I = new String[]{"4oBn500ONSa7zUcj69ZejwliI7fNkQe9", "sao3", "S05M", "dUQbnZGK3vs92wXndxl51oc8w6Wzg5UK", "r2dYBwwJ6wCRp20YpqJDniAkemsUTuNE", "fcxFuh", "wirhT", "AIyirGzN48rHG0XGibSi5d9zNx7vdYO1"};
    }

    public DQ(CS cs, boolean z, boolean z2) {
        this.A0E = cs;
        this.A0G = z;
        this.A0H = z2;
        A02();
    }

    private void A01(int i) {
        boolean z = this.A0A;
        this.A0E.ADS(this.A05, z ? 1 : 0, (int) (this.A02 - this.A04), i, null);
    }

    public final void A02() {
        this.A08 = false;
        this.A09 = false;
        this.A07.A03();
    }

    public final void A03(long j, int i) {
        boolean z = false;
        if (this.A01 == 9 || (this.A0H && (this.A07.A01(this.A06)))) {
            if (this.A09) {
                A01(i + ((int) (j - this.A02)));
            }
            this.A04 = this.A02;
            this.A05 = this.A03;
            this.A0A = false;
            this.A09 = true;
        }
        boolean z2 = this.A0A;
        int i2 = this.A01;
        if (i2 == 5 || (this.A0G && i2 == 1 && this.A07.A06())) {
            z = true;
        }
        this.A0A = z2 | z;
    }

    public final void A04(long j, int i, long j2) {
        this.A01 = i;
        this.A03 = j2;
        this.A02 = j;
        if (!this.A0G || this.A01 != 1) {
            if (this.A0H) {
                int i2 = this.A01;
                if (!(i2 == 5 || i2 == 1 || i2 == 2)) {
                    return;
                }
            } else {
                return;
            }
        }
        DP dp = this.A06;
        this.A06 = this.A07;
        this.A07 = dp;
        this.A07.A03();
        this.A00 = 0;
        this.A08 = true;
    }

    public final void A05(IG ig) {
        this.A0C.append(ig.A00, ig);
    }

    public final void A06(IH ih) {
        this.A0D.append(ih.A05, ih);
    }

    /* JADX INFO: Multiple debug info for r1v30 com.facebook.ads.redexgen.X.IG: [D('picParameterSetId' int), D('ppsData' com.facebook.ads.redexgen.X.IG), D('deltaPicOrderCnt0' int)] */
    /* JADX INFO: Multiple debug info for r6v3 com.facebook.ads.redexgen.X.DP: [D('ppsData' com.facebook.ads.redexgen.X.IG), D('fieldPicFlag' boolean)] */
    public final void A07(byte[] bArr, int readLength, int i) {
        boolean z;
        if (this.A08) {
            int i2 = i - readLength;
            byte[] bArr2 = this.A0B;
            int length = bArr2.length;
            int i3 = this.A00;
            if (length < i3 + i2) {
                this.A0B = Arrays.copyOf(bArr2, (i3 + i2) * 2);
            }
            System.arraycopy(bArr, readLength, this.A0B, this.A00, i2);
            this.A00 += i2;
            this.A0F.A09(this.A0B, 0, this.A00);
            if (this.A0F.A0C(8)) {
                this.A0F.A07();
                int deltaPicOrderCnt1 = this.A0F.A06(2);
                this.A0F.A08(5);
                if (this.A0F.A0A()) {
                    this.A0F.A05();
                    if (this.A0F.A0A()) {
                        int A052 = this.A0F.A05();
                        if (!this.A0H) {
                            this.A08 = false;
                            this.A07.A04(A052);
                        } else if (this.A0F.A0A()) {
                            int A053 = this.A0F.A05();
                            String[] strArr = A0I;
                            if (strArr[0].charAt(5) != strArr[3].charAt(5)) {
                                A0I[6] = "2v7XO";
                                if (this.A0C.indexOfKey(A053) < 0) {
                                    this.A08 = false;
                                    return;
                                }
                                IG ppsData = this.A0C.get(A053);
                                IH ih = this.A0D.get(ppsData.A01);
                                if (ih.A09) {
                                    if (this.A0F.A0C(2)) {
                                        this.A0F.A08(2);
                                    } else {
                                        return;
                                    }
                                }
                                if (this.A0F.A0C(ih.A01)) {
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    boolean z4 = false;
                                    int A062 = this.A0F.A06(ih.A01);
                                    if (!ih.A08) {
                                        if (this.A0F.A0C(1)) {
                                            z2 = this.A0F.A0B();
                                            if (!z2) {
                                                String[] strArr2 = A0I;
                                                if (strArr2[2].length() == strArr2[1].length()) {
                                                    A0I[4] = "qwcYbvbtciQlsge07t8jnpQbFFEGYRzL";
                                                }
                                            } else if (this.A0F.A0C(1)) {
                                                z4 = this.A0F.A0B();
                                                z3 = true;
                                            } else {
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                    if (this.A01 == 5) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    int i4 = 0;
                                    if (z) {
                                        if (this.A0F.A0A()) {
                                            IN in = this.A0F;
                                            if (A0I[5].length() != 32) {
                                                String[] strArr3 = A0I;
                                                strArr3[0] = "CUn0EGRMZuaxcZmcWt6bm8g2eSLscmSu";
                                                strArr3[3] = "AO4oaRrhS9J5INJLsqTeqW6rWo7URvM3";
                                                i4 = in.A05();
                                            } else {
                                                throw new RuntimeException();
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                    int i5 = 0;
                                    int i6 = 0;
                                    int i7 = 0;
                                    int i8 = 0;
                                    if (ih.A04 != 0) {
                                        int picOrderCntLsb = ih.A04;
                                        if (A0I[7].charAt(28) != 'l') {
                                            A0I[7] = "MOrewcskpOrth27AIRJiHCsaXTOPbZzW";
                                            if (picOrderCntLsb == 1 && !ih.A07) {
                                                if (this.A0F.A0A()) {
                                                    i7 = this.A0F.A04();
                                                    if (ppsData.A02 && !z2) {
                                                        if (this.A0F.A0A()) {
                                                            i8 = this.A0F.A04();
                                                        } else {
                                                            return;
                                                        }
                                                    }
                                                } else {
                                                    return;
                                                }
                                            }
                                        } else {
                                            throw new RuntimeException();
                                        }
                                    } else if (this.A0F.A0C(ih.A03)) {
                                        IN in2 = this.A0F;
                                        int i9 = ih.A03;
                                        if (A0I[7].charAt(28) != 108) {
                                            A0I[4] = "13MW05H83xonKdXxuFb2nSy24rNhSBqM";
                                            i5 = in2.A06(i9);
                                            if (ppsData.A02 && !z2) {
                                                if (this.A0F.A0A()) {
                                                    i6 = this.A0F.A04();
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                    } else {
                                        return;
                                    }
                                    this.A07.A05(ih, deltaPicOrderCnt1, A052, A062, A053, z2, z3, z4, z, i4, i5, i6, i7, i8);
                                    this.A08 = false;
                                    return;
                                }
                                return;
                            }
                            throw new RuntimeException();
                        }
                    }
                }
            }
        }
    }

    public final boolean A08() {
        return this.A0H;
    }
}
