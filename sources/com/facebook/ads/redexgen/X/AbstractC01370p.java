package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.0p  reason: invalid class name and case insensitive filesystem */
public abstract class AbstractC01370p {
    public static byte[] A04;
    public static String[] A05;
    public boolean A00;
    public final XJ A01;
    public final AbstractC01380q A02;
    public final QE A03;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 37);
            String[] strArr = A05;
            if (strArr[7].charAt(19) != strArr[3].charAt(19)) {
                String[] strArr2 = A05;
                strArr2[5] = "ralyQsFIfJjHchT6ijaCYOn7xcrh9SYP";
                strArr2[0] = "lf1tsTh5P7IODA8hmkOKCVUdKtrYifbk";
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-126, -90, -87, -85, -98, -84, -84, -94, -88, -89, 89, -91, -88, -96, -96, -98, -99};
    }

    public static void A02() {
        A05 = new String[]{"OqcLT37Xtir4oyEfNmT1h4Rk4YkQZZDY", "Uwe5RI", "pL0dXLjcEL0YvPTfwlaTsWSX1DbaAkE5", "xtw7OOYBvYdKgcW8WzcZrKA0PDZy4bwg", "f918FI", "0rYE8aKdqB5alUcDRGHr7byWf0zxjLED", "HJdrWZ0hD1uhwEG", "W2AWehjS6wPr2mpVEIqcODXDVwSDQEbA"};
    }

    public abstract void A07(Map<String, String> map);

    public AbstractC01370p(XJ xj, AbstractC01380q r2, QE qe) {
        this.A01 = xj;
        this.A02 = r2;
        this.A03 = qe;
    }

    public final void A03() {
        if (!this.A00) {
            AbstractC01380q r0 = this.A02;
            if (r0 != null) {
                r0.A01();
            }
            A07(new C0678Nc().A04(this.A03).A06());
            this.A00 = true;
            L1.A02(this.A01, A00(0, 17, 20));
            AbstractC01380q r02 = this.A02;
        }
    }
}
