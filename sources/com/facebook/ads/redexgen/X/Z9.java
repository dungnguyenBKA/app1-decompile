package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Z9 extends AbstractC0420Ch {
    public static byte[] A03;
    public final long A00;
    public final List<Z9> A01 = new ArrayList();
    public final List<ZA> A02 = new ArrayList();

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{0, 67, 79, 78, 84, 65, 73, 78, 69, 82, 83, 26, 0, -110, -34, -41, -45, -24, -41, -27, -84, -110};
    }

    public Z9(int i, long j) {
        super(i);
        this.A00 = j;
    }

    public final Z9 A06(int i) {
        int size = this.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            Z9 z9 = this.A01.get(i2);
            if (((AbstractC0420Ch) z9).A00 == i) {
                return z9;
            }
        }
        return null;
    }

    public final ZA A07(int i) {
        int size = this.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            ZA za = this.A02.get(i2);
            if (((AbstractC0420Ch) za).A00 == i) {
                return za;
            }
        }
        return null;
    }

    public final void A08(Z9 z9) {
        this.A01.add(z9);
    }

    public final void A09(ZA za) {
        this.A02.add(za);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0420Ch
    public final String toString() {
        return AbstractC0420Ch.A02(super.A00) + A04(13, 9, 15) + Arrays.toString(this.A02.toArray()) + A04(0, 13, 125) + Arrays.toString(this.A01.toArray());
    }
}
