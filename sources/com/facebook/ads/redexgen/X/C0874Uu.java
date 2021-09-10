package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Uu  reason: case insensitive filesystem */
public class C0874Uu implements AbstractC02806e {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ V4 A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {32, 31, 50, 50, 35, 48, 55, 29, 42, 45, 53};
        String[] strArr = A02;
        if (strArr[5].length() != strArr[4].length()) {
            A02[7] = "zsr7uVrJNcFH7kX5XxLPdtK6eEcZRxEm";
            A01 = bArr;
            return;
        }
        throw new RuntimeException();
    }

    public static void A02() {
        A02 = new String[]{"dNr6PPQsY9l", "RH2U4Hh24YJB1CaC1uFo9RGIyJZKKzLP", "dQYGehnAuPol14EFpizMkTDsN0LYSx6h", "7Q5ZVjGu0JJTpQG9POYIlRIj1jnsmDo", "fVmoe7EJsPLcTdm", "gOyCjpHNXOG3DgRDYrCD", "Bt7utfgyfoKMrlpwfOIMwYj8ykKc", "iv3XcVN43HhJpxh2FG4KyUlJf74g4nGs"};
    }

    public C0874Uu(V4 v4) {
        this.A00 = v4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A0C(A00(0, 11, 124), false);
    }
}
