package com.facebook.ads.redexgen.X;

import java.util.Iterator;
import java.util.Set;

public final class A4 {
    public static String[] A0C;
    public final int A00;
    public final int A01;
    public final AK A02;
    public final H7 A03;
    public final Set<AO> A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;
    public final boolean A0B;

    static {
        A00();
    }

    public static void A00() {
        A0C = new String[]{"WV1wdoH9jrQVDigahBrbrXyjnekpmiiE", "mIVo7Cnr72P7RKesjBWLJYV7ajvYF70D", "pH5vi4Kbi5SdF2Ft8jCp0yyfmrwCNJ93", "VAiIhwzGtJV", "mutijWrtbdTsRUOKFhZTpXzdiINxdKbV", "iAqM", "YM6GPYhzTMlO14HNxrpVvdDRlTI", "SmN7PcN3RYN"};
    }

    public A4(AK ak, AK ak2, Set<AO> set, H7 h7, boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        boolean z6;
        boolean z7;
        this.A02 = ak;
        this.A04 = set;
        this.A03 = h7;
        this.A08 = z;
        this.A00 = i;
        this.A01 = i2;
        this.A09 = z2;
        this.A06 = z3;
        boolean z8 = false;
        if (z4 || ak2.A00 != ak.A00) {
            z5 = true;
        } else {
            z5 = false;
        }
        this.A07 = z5;
        if (ak2.A03 == ak.A03 && ak2.A07 == ak.A07) {
            z6 = false;
        } else {
            z6 = true;
        }
        this.A0A = z6;
        if (ak2.A08 != ak.A08) {
            z7 = true;
        } else {
            z7 = false;
        }
        this.A05 = z7;
        this.A0B = ak2.A06 != ak.A06 ? true : z8;
    }

    public final void A01() {
        if (this.A0A || this.A01 == 0) {
            for (AO ao : this.A04) {
                ao.ABo(this.A02.A03, this.A02.A07, this.A01);
            }
        }
        boolean z = this.A08;
        String[] strArr = A0C;
        if (strArr[1].charAt(12) == strArr[4].charAt(12)) {
            String[] strArr2 = A0C;
            strArr2[3] = "CSJCqnrxZvV";
            strArr2[7] = "Hkj5q7ot6VH";
            if (z) {
                Iterator<AO> it = this.A04.iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    String[] strArr3 = A0C;
                    if (strArr3[0].charAt(22) == strArr3[2].charAt(22)) {
                        String[] strArr4 = A0C;
                        strArr4[1] = "CqJcwx9zuxyuReRUn3Ztwbm9rESV0hnU";
                        strArr4[4] = "BsXcrNWYLVI0RgolRvCIuekTJNQNO1r0";
                        if (!hasNext) {
                            break;
                        }
                    } else {
                        if (!hasNext) {
                            break;
                        }
                    }
                    it.next().ABD(this.A00);
                }
            }
            if (this.A0B) {
                this.A03.A0W(this.A02.A06.A02);
                for (AO ao2 : this.A04) {
                    ao2.ABp(this.A02.A05, this.A02.A06.A01);
                }
            }
            boolean z2 = this.A05;
            String[] strArr5 = A0C;
            if (strArr5[1].charAt(12) == strArr5[4].charAt(12)) {
                String[] strArr6 = A0C;
                strArr6[6] = "ZmCtUBpIkW4VOgBlZsMYRrBehzT";
                strArr6[5] = "Qd2F";
                if (z2) {
                    for (AO ao3 : this.A04) {
                        ao3.AAi(this.A02.A08);
                    }
                }
                if (this.A07) {
                    for (AO ao4 : this.A04) {
                        ao4.ABB(this.A06, this.A02.A00);
                    }
                }
                if (this.A09) {
                    for (AO listener : this.A04) {
                        listener.ABa();
                    }
                    return;
                }
                return;
            }
        }
        throw new RuntimeException();
    }
}
