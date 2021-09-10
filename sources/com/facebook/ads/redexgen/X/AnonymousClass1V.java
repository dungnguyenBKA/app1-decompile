package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Init of enum A05 can be incorrect */
/* JADX WARN: Init of enum A04 can be incorrect */
/* JADX WARN: Init of enum A03 can be incorrect */
/* renamed from: com.facebook.ads.redexgen.X.1V  reason: invalid class name */
public enum AnonymousClass1V {
    A05(r1),
    A04(r1),
    A03(r1);
    
    public static byte[] A01;
    public final String A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{24, 23, 18, 27, 1, 14, 12, 27, 29, 31, 29, 22, 27, 3, 1, 28, 11, 10, 12, 3, 1, 22, 16, 18, 16, 27, 22, 119, 101, 98, 118, 105, 101, 119, Byte.MAX_VALUE, 112, 114, 101, 99, 97, 99, 104, 101};
    }

    /* access modifiers changed from: public */
    static {
        A02();
        A01(27, 16, 0);
        A01(13, 14, 115);
        A01(0, 13, 126);
    }

    /* access modifiers changed from: public */
    AnonymousClass1V(String str) {
        this.A00 = str;
    }

    public static AnonymousClass1V A00(String str) {
        AnonymousClass1V[] values = values();
        for (AnonymousClass1V r1 : values) {
            if (r1.A00.equalsIgnoreCase(str)) {
                return r1;
            }
        }
        return A03;
    }
}
