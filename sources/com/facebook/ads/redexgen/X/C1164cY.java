package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.cY  reason: case insensitive filesystem */
public class C1164cY implements LO {
    public static byte[] A03;
    public static String[] A04;
    public int A00;
    @Nullable
    public String A01;
    public final LO A02;

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = copyOfRange[i4];
            String[] strArr = A04;
            if (strArr[5].charAt(25) != strArr[3].charAt(25)) {
                String[] strArr2 = A04;
                strArr2[5] = "Ai5XpAh7M4hRkPfPQf54GYnUnAkHicBv";
                strArr2[3] = "aIcIWiLMc3Hy2WApHOm5eO35KvTaoUWD";
                copyOfRange[i4] = (byte) ((b - i3) - 83);
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-117, -117, 125, Byte.MIN_VALUE};
    }

    public static void A03() {
        A04 = new String[]{"3JpGgMVfhEKs4h1tr8RMzDA7DOHokops", "dXqQ9QAcXKU8whF3kmnzOWjNbVMrrIOv", "otwaAvusvekoag06qMT5pISHPHVrRcMV", "WpvUEDFnYdSXMC7RGaJnlQQN5lPpeUoV", "uIVwlH6eBNHvEYk4kE6nlnhEt8muXj04", "pYVE6LchgLxW1usH7NIdAbU6pOe1Iyyx", "cgHZB3wyyqxQlT2ShG9pTXiCyg", "w9qB75SnMFWvoXL9CpdnGLUKrWLPOybN"};
    }

    public C1164cY(LO lo) {
        this.A02 = lo;
    }

    private void A01() {
        if (this.A01 != null) {
            LO lo = this.A02;
            lo.ACZ(this.A01 + A00(0, 4, 10) + this.A00);
            this.A01 = null;
            this.A00 = 0;
        }
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void ACZ(String str) {
        if (LQ.A0A(str)) {
            A01();
            this.A02.ACZ(str);
            return;
        }
        String str2 = LQ.A04(str);
        if (str2.equals(this.A01)) {
            this.A00++;
            return;
        }
        A01();
        this.A01 = str2;
        this.A00 = 1;
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void flush() {
        A01();
        this.A02.flush();
    }
}
