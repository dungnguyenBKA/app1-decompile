package com.facebook.ads.redexgen.X;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class WL implements AbstractC02806e {
    public static byte[] A01;
    public final /* synthetic */ WM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Byte.MIN_VALUE, -28, -29, -43, -68, -57};
    }

    public WL(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (this.A00.A04 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.A00.A04.length; i++) {
            sb.append(this.A00.A04[i].name);
            if (i != this.A00.A04.length - 1) {
                sb.append(A00(0, 1, 37));
            }
        }
        return this.A00.A09(AnonymousClass72.A08(sb.toString().getBytes(A00(1, 5, 62)), AnonymousClass71.A06));
    }
}
