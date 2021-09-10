package com.facebook.ads.redexgen.X;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class W5 implements AbstractC02806e {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ WM A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{18, 121, 120, 106, 1, 20};
    }

    public static void A02() {
        A02 = new String[]{"Wdahz1Wjl3dMmMcpJsybmGRAeciA4tMI", "owhKI", "oRwt0jb9EEblUBuGQWVNL6ozc0Rzi0vw", "l56im1aaEdwcDHM5hLD8b", "Eu2PxKSDFU9lAkWHn67wF6yqVh6mLTIL", "0Vvrgp6tuvzAmenwYfecbhGxQfkK1YW3", "HQi", "vUie1Te"};
    }

    public W5(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (this.A00.A05 != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.A00.A05.length; i++) {
                sb.append(this.A00.A05[i].name);
                if (i != this.A00.A05.length - 1) {
                    sb.append(A00(0, 1, 6));
                }
            }
            return this.A00.A09(AnonymousClass72.A08(sb.toString().getBytes(A00(1, 5, 50)), AnonymousClass71.A06));
        }
        AbstractC02956t A08 = this.A00.A08(EnumC02916p.A07);
        String[] strArr = A02;
        if (strArr[5].charAt(15) != strArr[0].charAt(15)) {
            String[] strArr2 = A02;
            strArr2[2] = "PIV5HCfMNdAm4GWeouxefmFP0XOPfsYa";
            strArr2[4] = "Fq26Ssz9KPDLteFZDGni0zECOafhdUl8";
            return A08;
        }
        throw new RuntimeException();
    }
}
