package com.facebook.ads.redexgen.X;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class W8 implements AbstractC02806e {
    public static byte[] A01;
    public final /* synthetic */ WM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 84);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{123, -71, -72, -86, -111, -100};
    }

    public W8(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (this.A00.A06 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.A00.A06.length; i++) {
            sb.append(this.A00.A06[i]);
            if (i != this.A00.A06.length - 1) {
                sb.append(A00(0, 1, 29));
            }
        }
        return this.A00.A09(AnonymousClass72.A08(sb.toString().getBytes(A00(1, 5, 16)), AnonymousClass71.A06));
    }
}
