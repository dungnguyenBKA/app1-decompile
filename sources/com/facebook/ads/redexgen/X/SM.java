package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;

public class SM extends AbstractRunnableC0603Kb {
    public static byte[] A05;
    public static String[] A06;
    public final /* synthetic */ long A00;
    public final /* synthetic */ C0794Rp A01;
    public final /* synthetic */ C01611n A02;
    public final /* synthetic */ F4 A03;
    public final /* synthetic */ C03388u A04;

    static {
        A03();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A06;
            if (strArr[1].length() != strArr[7].length()) {
                A06[2] = "zvIoaGxek6NRisBEUIKkM8UdU9N5bmYn";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 50);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A01() {
        A05 = new byte[]{33, 61, 55, 32, 32, 61, 32, 82, 76, 88, 61, 32, 36, 44, 38, 60, 61};
        if (A06[4].charAt(21) != 'x') {
            A06[2] = "OuAVUMSSWbttlxL4z5HkeS5T535dgvDy";
            return;
        }
        throw new RuntimeException();
    }

    public static void A03() {
        A06 = new String[]{"Gpv8eHHTEOtePQmo1OD6muRo415gTvmp", "m8VLVbL9uinkegCEMoYL3DBV4Qd", "9DesmfPYImwpHbFMCkN8D4N2A0eEtTnA", "p6qK7niiHhY9MGJ6cPP69YBKuDETC8Y4", "5iURk91XNbuPvrJWt8OL2zSUhjl2Moa0", "44pBDqZwGccZEwpE1ClPCXXxeIB", "3LUdHIp1lrC6CN8jsqyi77AXm4NZ0z", "iLxtTrJV"};
    }

    public SM(F4 f4, C01611n r2, C0794Rp rp, long j, C03388u r6) {
        this.A03 = f4;
        this.A02 = r2;
        this.A01 = rp;
        this.A00 = j;
        this.A04 = r6;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A03.A0S(this.A02);
        this.A03.A0P(this.A01);
        Map A022 = F4.A02(this.A03, this.A00);
        A022.put(A00(2, 5, 96), A00(0, 2, 62));
        A022.put(A00(7, 3, 13), A00(10, 7, 123));
        F4.A05(this.A03, this.A04.A04(EnumC03428y.A05), A022);
        this.A03.A0O();
    }
}
