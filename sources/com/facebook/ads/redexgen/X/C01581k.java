package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.1k  reason: invalid class name and case insensitive filesystem */
public final class C01581k {
    public static byte[] A00;
    public static String[] A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].charAt(12) != strArr[5].charAt(12)) {
                break;
            }
            A01[2] = "wyIfRhN1EoOdsBbK5VRzuRP5Lc7uqmgb";
            if (i4 < length) {
                byte b = (byte) ((copyOfRange[i4] - i3) - 100);
                if (A01[0].length() == 15) {
                    break;
                }
                String[] strArr2 = A01;
                strArr2[3] = "fUzr4JaNgjTtoWHz8k6HkVts9HpSP1Qi";
                strArr2[1] = "zuQx1GaumRIGoFj6MrcQJkCLkICnzrhi";
                copyOfRange[i4] = b;
                i4++;
            } else {
                return new String(copyOfRange);
            }
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A00 = new byte[]{-88, -30, -18, -25, -26};
    }

    public static void A02() {
        A01 = new String[]{"kdNZsDbIr2FjUgQ6", "G4tbE8YXKkBHtbRzjHgF1iVs8BhQX3ki", "rgsd1nh14jUfY0oEDkCzVbJlkUwrdBXO", "6d8i19T6TQ9xRiUYh6SOmARBfT83lkdi", "2FsjHYpAfMpiihTdUse", "xtyrzkpFCSmXtl0pVvZtRxgukiiALNOU", "PnjWz3Ubzat8tEiN6RTB47L4MZQANY1H", "IONaBzwOxfylvpW8Ch"};
    }

    public static void A03(XJ xj, AnonymousClass16 r12, boolean z, AbstractC01561i r14) {
        if (J4.A1H(xj)) {
            r14.AB6();
            return;
        }
        AnonymousClass7D r9 = new AnonymousClass7D(xj);
        AnonymousClass1U A06 = r12.A0N().A0E().A06();
        r9.A0Z(new JJ(r12.A0T(), xj.A06()));
        if (A06 == null) {
            r14.AB5(AdError.CACHE_ERROR);
        } else if (A06.A0K()) {
            r14.AB6();
            if (A01[2].charAt(7) != '1') {
                throw new RuntimeException();
            }
            A01[0] = "84TqyqDRqUmJCVM8";
        } else {
            AnonymousClass7C r4 = new AnonymousClass7C(A06.A0F(), r12.A0Y(), r12.A0X());
            r4.A04 = true;
            if (J4.A1D(xj)) {
                r4.A03 = A00(0, 5, 22);
            }
            int i = C01551h.A00[A06.A0A().ordinal()];
            if (i == 1 || i == 2) {
                r9.A0V(r4);
            }
            r9.A0T(new AnonymousClass7A(r12.A0Q().A01(), -1, -1, r12.A0Y(), r12.A0X()));
            r9.A0T(new AnonymousClass7A(A06.A0E(), -1, -1, r12.A0Y(), r12.A0X()));
            r9.A0S(new SB(xj, r14, r9, A06, z), new AnonymousClass76(r12.A0Y(), r12.A0X()));
        }
    }
}
