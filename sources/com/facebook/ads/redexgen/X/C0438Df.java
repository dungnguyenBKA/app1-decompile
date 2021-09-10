package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Df  reason: case insensitive filesystem */
public final class C0438Df implements Z7 {
    public static byte[] A05;
    public static String[] A06;
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long[] A04;

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A06;
            if (strArr[0].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A06[5] = "xDmrh2CysME7FGpg0OVAAWQWrb1b5rm7";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
            i4++;
        }
    }

    public static void A03() {
        String[] strArr = A06;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A06[5] = "O7i6ampyP1fRYbe4QOmd9JyFrRUTDP0J";
        A05 = new byte[]{87, 91, 99, 114, 117, 124, 27, 95, 90, 79, 90, 27, 72, 82, 65, 94, 27, 86, 82, 72, 86, 90, 79, 88, 83, 1, 27, 82, 99, 100, 109, 89, 111, 111, 97, 111, 120};
    }

    public static void A04() {
        A06 = new String[]{"BIb1Y700RDmcL7JF9Fn", "lk1IRtv8jtyAOasrQbC6YrAcVcFJ9", "71nm4ncPUlnpG5PegzVfukIlQIS7yUOP", "GCiVubWGa77lALd1Rb0", "chLweuz0mMl4FbXf4CPkrAmx2V", "NRv5J71Oqm94bOZTTnySoFkmq1d86Acc", "fJm6FHaelFV0WMwBghon3E9Gns2th", "ObA7Byd4NJEP2M9ay6ZCFLfldVonyLqe"};
    }

    public C0438Df(long j, int i, long j2) {
        this(j, i, j2, -1, null);
    }

    public C0438Df(long j, int i, long j2, long j3, long[] jArr) {
        this.A02 = j;
        this.A00 = i;
        this.A03 = j2;
        this.A01 = j3;
        this.A04 = jArr;
    }

    private long A00(int i) {
        return (this.A03 * ((long) i)) / 100;
    }

    /* JADX INFO: Multiple debug info for r0v2 int: [D('flags' int), D('frameCount' int)] */
    public static C0438Df A01(long j, long j2, CM cm, IM im) {
        int frameCount;
        int i = cm.A04;
        int i2 = cm.A03;
        int A09 = im.A09();
        if ((A09 & 1) != 1 || (frameCount = im.A0I()) == 0) {
            return null;
        }
        long dataSize = C0556Ic.A0F((long) frameCount, ((long) i) * 1000000, (long) i2);
        if ((A09 & 6) != 6) {
            return new C0438Df(j2, cm.A02, dataSize);
        }
        long A0I = (long) im.A0I();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = (long) im.A0F();
        }
        if (!(j == -1 || j == j2 + A0I)) {
            Log.w(A02(27, 10, 96), A02(2, 25, 81) + j + A02(0, 2, 17) + (j2 + A0I));
        }
        return new C0438Df(j2, cm.A02, dataSize, A0I, jArr);
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long j) {
        double d;
        double scaledPosition;
        if (!A8D()) {
            return new CO(new CQ(0, this.A02 + ((long) this.A00)));
        }
        long positionOffset = C0556Ic.A0E(j, 0, this.A03);
        double d2 = (((double) positionOffset) * 100.0d) / ((double) this.A03);
        if (d2 <= 0.0d) {
            scaledPosition = 0.0d;
        } else if (d2 >= 100.0d) {
            scaledPosition = 256.0d;
        } else {
            int i = (int) d2;
            long[] jArr = this.A04;
            double d3 = (double) jArr[i];
            if (A06[4].length() != 1) {
                A06[4] = "";
                if (i == 99) {
                    d = 256.0d;
                } else {
                    d = (double) jArr[i + 1];
                }
                scaledPosition = d3 + ((d - d3) * (d2 - ((double) i)));
            } else {
                throw new RuntimeException();
            }
        }
        return new CO(new CQ(positionOffset, this.A02 + C0556Ic.A0E(Math.round((scaledPosition / 256.0d) * ((double) this.A01)), (long) this.A00, this.A01 - 1)));
    }

    @Override // com.facebook.ads.redexgen.X.Z7
    public final long A7L(long j) {
        long j2;
        double d;
        long positionOffset = j - this.A02;
        if (!A8D()) {
            return 0;
        }
        long j3 = (long) this.A00;
        if (A06[4].length() != 1) {
            A06[5] = "XBnVl7Vf2qRXlKywSNR3LOgq8shxQKKO";
            if (positionOffset <= j3) {
                return 0;
            }
            double d2 = (((double) positionOffset) * 256.0d) / ((double) this.A01);
            int A0B = C0556Ic.A0B(this.A04, (long) d2, true, true);
            long A002 = A00(A0B);
            long j4 = this.A04[A0B];
            long A003 = A00(A0B + 1);
            if (A0B == 99) {
                j2 = 256;
            } else {
                j2 = this.A04[A0B + 1];
            }
            if (j4 == j2) {
                d = 0.0d;
            } else {
                d = (d2 - ((double) j4)) / ((double) (j2 - j4));
            }
            return Math.round(((double) (A003 - A002)) * d) + A002;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return this.A04 != null;
    }
}
