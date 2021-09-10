package com.facebook.ads.redexgen.X;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: com.facebook.ads.redexgen.X.Zf  reason: case insensitive filesystem */
public final class C0989Zf implements DM {
    public static byte[] A0K;
    public static String[] A0L;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;
    public long A0A;
    public long A0B;
    public Format A0C;
    public CS A0D;
    public String A0E;
    public boolean A0F;
    public boolean A0G;
    public final IL A0H = new IL(this.A0I.A00);
    public final IM A0I = new IM(1024);
    public final String A0J;

    static {
        A05();
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] - i3) - 35;
            String[] strArr = A0L;
            if (strArr[1].charAt(19) != strArr[0].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0L;
            strArr2[3] = "gooppkWHFs0OH8ZO7KHmI5JoYki0niEb";
            strArr2[4] = "gQ32BKgMXcn7uGYeyK4g8BO1uII782R4";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0K = new byte[]{-87, -67, -84, -79, -73, 119, -75, -72, 124, -87, 117, -76, -87, -68, -75};
    }

    public static void A05() {
        A0L = new String[]{"hgUALiBHRBx3rc9PT3qyJLJuKriNjQIA", "JcSPF8dLSzFIe8gapkYyYGiPDe1iVZ7T", "a8IrrF5hi8IFjeZ2lIy6xY1armnYmb5o", "dI536DedIqR9AIwKwKzHAZoNzdw0gd0o", "spoCU0rWYssiPe95xKAIpCDVtAt9VbvV", "ZT5oGWr6FGwuE", "k3I4LHvMKlhfRum43HVkkWOAjRBPWhRl", "GOwjxx90kdElmS0"};
    }

    public C0989Zf(@Nullable String str) {
        this.A0J = str;
    }

    private int A00(IL il) throws AJ {
        int A022 = il.A02();
        Pair<Integer, Integer> A023 = I1.A02(il, true);
        this.A05 = ((Integer) A023.first).intValue();
        this.A02 = ((Integer) A023.second).intValue();
        return A022 - il.A02();
    }

    private int A01(IL il) throws AJ {
        int A052;
        int i = 0;
        if (this.A03 == 0) {
            do {
                A052 = il.A05(8);
                i += A052;
            } while (A052 == 255);
            return i;
        }
        throw new AJ();
    }

    public static long A02(IL il) {
        return (long) il.A05((il.A05(2) + 1) * 8);
    }

    private void A06(int i) {
        this.A0I.A0X(i);
        this.A0H.A0C(this.A0I.A00);
    }

    private void A07(IL il) throws AJ {
        if (!il.A0G()) {
            this.A0G = true;
            A09(il);
        } else if (!this.A0G) {
            return;
        }
        if (this.A00 != 0) {
            throw new AJ();
        } else if (this.A04 == 0) {
            A0A(il, A01(il));
            if (this.A0F) {
                il.A09((int) this.A09);
            }
        } else {
            throw new AJ();
        }
    }

    private void A08(IL il) {
        this.A03 = il.A05(3);
        int i = this.A03;
        if (i == 0) {
            il.A09(8);
        } else if (i == 1) {
            il.A09(9);
        } else if (i == 3 || i == 4 || i == 5) {
            il.A09(6);
        } else {
            if (i != 6) {
                if (A0L[7].length() != 15) {
                    throw new RuntimeException();
                }
                String[] strArr = A0L;
                strArr[1] = "QJhjenmrzPYVr6mrKS1ywIZfks2sEqmv";
                strArr[0] = "rtM7Stfru76sVtn814uyI2mxrEEn9Ydu";
                if (i != 7) {
                    return;
                }
            }
            il.A09(1);
        }
    }

    /* JADX INFO: Multiple debug info for r0v26 byte[]: [D('readBits' int), D('initData' byte[])] */
    private void A09(IL il) throws AJ {
        int bitsRead;
        boolean A0G2;
        int numProgram = il.A05(1);
        if (numProgram == 1) {
            bitsRead = il.A05(1);
        } else {
            bitsRead = 0;
        }
        this.A00 = bitsRead;
        if (this.A00 == 0) {
            if (numProgram == 1) {
                A02(il);
            }
            if (il.A0G()) {
                this.A04 = il.A05(6);
                int A052 = il.A05(4);
                int A053 = il.A05(3);
                if (A052 == 0 && A053 == 0) {
                    if (numProgram == 0) {
                        int readBits = il.A04();
                        int A002 = A00(il);
                        il.A08(readBits);
                        byte[] initData = new byte[((A002 + 7) / 8)];
                        il.A0E(initData, 0, A002);
                        Format A072 = Format.A07(this.A0E, A03(0, 15, 37), null, -1, -1, this.A02, this.A05, Collections.singletonList(initData), null, 0, this.A0J);
                        if (!A072.equals(this.A0C)) {
                            this.A0C = A072;
                            this.A0A = 1024000000 / ((long) A072.A0C);
                            this.A0D.A5P(A072);
                        }
                    } else {
                        il.A09(((int) A02(il)) - A00(il));
                    }
                    A08(il);
                    this.A0F = il.A0G();
                    this.A09 = 0;
                    if (this.A0F) {
                        if (numProgram == 1) {
                            this.A09 = A02(il);
                        } else {
                            do {
                                A0G2 = il.A0G();
                                this.A09 = (this.A09 << 8) + ((long) il.A05(8));
                            } while (A0G2);
                        }
                    }
                    if (il.A0G()) {
                        il.A09(8);
                        return;
                    }
                    return;
                }
                throw new AJ();
            }
            throw new AJ();
        }
        throw new AJ();
    }

    private void A0A(IL il, int i) {
        int A042 = il.A04();
        if ((A042 & 7) == 0) {
            this.A0I.A0Z(A042 >> 3);
        } else {
            il.A0E(this.A0I.A00, 0, i * 8);
            this.A0I.A0Z(0);
        }
        this.A0D.ADR(this.A0I, i);
        this.A0D.ADS(this.A0B, 1, i, 0, null);
        this.A0B += this.A0A;
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.Zf: [D('bytesToRead' int), D('secondByte' int)] */
    @Override // com.facebook.ads.redexgen.X.DM
    public final void A49(IM im) throws AJ {
        while (im.A05() > 0) {
            int i = this.A08;
            if (i != 0) {
                if (i == 1) {
                    int A0F2 = im.A0F();
                    if ((A0F2 & 224) == 224) {
                        this.A07 = A0F2;
                        this.A08 = 2;
                    } else if (A0F2 != 86) {
                        this.A08 = 0;
                    }
                } else if (A0L[7].length() != 15) {
                    throw new RuntimeException();
                } else {
                    String[] strArr = A0L;
                    strArr[3] = "eXMY6UfuU8mptnxKZK3KjbCMiU1pAKNs";
                    strArr[4] = "BrFOrdIatggcu5HdAKqvOHyOVIidANWA";
                    if (i == 2) {
                        this.A06 = ((this.A07 & -225) << 8) | im.A0F();
                        if (this.A06 > this.A0I.A00.length) {
                            A06(this.A06);
                        }
                        this.A01 = 0;
                        this.A08 = 3;
                    } else if (i == 3) {
                        int min = Math.min(im.A05(), this.A06 - this.A01);
                        im.A0d(this.A0H.A00, this.A01, min);
                        this.A01 += min;
                        if (this.A01 == this.A06) {
                            this.A0H.A08(0);
                            A07(this.A0H);
                            this.A08 = 0;
                        }
                    }
                }
            } else if (im.A0F() == 86) {
                this.A08 = 1;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        da.A06();
        this.A0D = ci.AEM(da.A04(), 1);
        this.A0E = da.A05();
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACI() {
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACJ(long j, boolean z) {
        this.A0B = j;
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ADV() {
        this.A08 = 0;
        this.A0G = false;
    }
}
