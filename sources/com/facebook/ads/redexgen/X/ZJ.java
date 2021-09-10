package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

public final class ZJ implements D9 {
    public static byte[] A0C;
    public static String[] A0D;
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public final long A08;
    public final long A09;
    public final D8 A0A = new D8();
    public final DC A0B;

    static {
        A0B();
        A0A();
    }

    public static String A09(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A0C = new byte[]{38, 7, 72, 7, 15, 15, 72, 24, 9, 15, 13, 72, 11, 9, 6, 72, 10, 13, 72, 14, 7, 29, 6, 12, 70};
    }

    public static void A0B() {
        A0D = new String[]{"IwWJ1rAHfmexjsebXRXcDPjaU73iSJJD", "Pfa9O7smeRLr", "YVPVKTJSUnoy1mID8h1JiHhyOv", "4YIcZCc9D0v6GYbVW55qq4", "MQGq3Ss0TGTuZcZl9hZWKHAs", "ClxO0wOPMkXGPeTsbkyLqOefUDvePx9Y", "eY8aqVMBTreysgzhCT0m33TuEQRECFok", "4vNP3Dy1WFFR"};
    }

    public ZJ(long j, long j2, DC dc, int i, long j3) {
        boolean z;
        if (j < 0 || j2 <= j) {
            z = false;
        } else {
            z = true;
        }
        C0551Hx.A03(z);
        this.A0B = dc;
        this.A09 = j;
        this.A08 = j2;
        if (((long) i) == j2 - j) {
            this.A07 = j3;
            this.A00 = 3;
            return;
        }
        this.A00 = 0;
    }

    /* access modifiers changed from: private */
    public long A00(long j, long j2, long j3) {
        long j4 = this.A08;
        long j5 = this.A09;
        long j6 = j + ((((j4 - j5) * j2) / this.A07) - j3);
        if (j6 < j5) {
            j6 = this.A09;
        }
        long j7 = this.A08;
        if (j6 >= j7) {
            return j7 - 1;
        }
        return j6;
    }

    private final long A01(long j, CH ch) throws IOException, InterruptedException {
        long j2 = 2;
        if (this.A04 == this.A01) {
            return -(this.A05 + 2);
        }
        long A71 = ch.A71();
        if (!A0E(ch, this.A01)) {
            long j3 = this.A04;
            if (j3 != A71) {
                return j3;
            }
            throw new IOException(A09(0, 25, 6));
        }
        this.A0A.A04(ch, false);
        ch.ADN();
        long j4 = j - this.A0A.A05;
        int i = this.A0A.A01 + this.A0A.A00;
        if (j4 >= 0) {
            String[] strArr = A0D;
            if (strArr[5].charAt(24) != strArr[0].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[2] = "1HFKFqyQYawdfec4zhOWKwAEhw";
            strArr2[3] = "atngC4wrhlAL4xDnem6FNv";
            if (j4 <= 72000) {
                ch.AE3(i);
                return -(this.A0A.A05 + 2);
            }
        }
        if (j4 < 0) {
            this.A01 = A71;
            this.A02 = this.A0A.A05;
        } else {
            this.A04 = ch.A71() + ((long) i);
            this.A05 = this.A0A.A05;
            if ((this.A01 - this.A04) + ((long) i) < 100000) {
                ch.AE3(i);
                return -(this.A05 + 2);
            }
        }
        long initialPosition = this.A01;
        long j5 = this.A04;
        if (initialPosition - j5 < 100000) {
            this.A01 = j5;
            return j5;
        }
        long j6 = (long) i;
        if (j4 > 0) {
            j2 = 1;
        }
        long A712 = ch.A71() - (j6 * j2);
        long j7 = this.A01;
        long j8 = this.A04;
        long j9 = (j7 - j8) * j4;
        String[] strArr3 = A0D;
        if (strArr3[5].charAt(24) != strArr3[0].charAt(24)) {
            return Math.min(Math.max(A712 + (j9 / (this.A02 - this.A05)), j8), this.A01 - 1);
        }
        String[] strArr4 = A0D;
        strArr4[1] = "HnyCEdH4by64";
        strArr4[7] = "f67XG71IQfud";
        return Math.min(Math.max(A712 + (j9 / (this.A02 - this.A05)), j8), this.A01 - 1);
    }

    private final long A02(CH ch) throws IOException, InterruptedException {
        A0D(ch);
        this.A0A.A03();
        while ((this.A0A.A04 & 4) != 4 && ch.A71() < this.A08) {
            this.A0A.A04(ch, false);
            ch.AE3(this.A0A.A01 + this.A0A.A00);
        }
        return this.A0A.A05;
    }

    private final long A03(CH ch, long j, long j2) throws IOException, InterruptedException {
        this.A0A.A04(ch, false);
        while (this.A0A.A05 < j) {
            ch.AE3(this.A0A.A01 + this.A0A.A00);
            j2 = this.A0A.A05;
            this.A0A.A04(ch, false);
        }
        ch.ADN();
        return j2;
    }

    /* access modifiers changed from: private */
    /* renamed from: A07 */
    public final ZI A4S() {
        if (this.A07 != 0) {
            return new ZI(this);
        }
        return null;
    }

    private final void A0C() {
        this.A04 = this.A09;
        this.A01 = this.A08;
        this.A05 = 0;
        this.A02 = this.A07;
    }

    private final void A0D(CH ch) throws IOException, InterruptedException {
        if (!A0E(ch, this.A08)) {
            throw new EOFException();
        }
    }

    private final boolean A0E(CH ch, long j) throws IOException, InterruptedException {
        long min = Math.min(3 + j, this.A08);
        byte[] bArr = new byte[2048];
        int length = bArr.length;
        while (true) {
            if (ch.A71() + ((long) length) > min && (length = (int) (min - ch.A71())) < 4) {
                return false;
            }
            ch.ACN(bArr, 0, length, false);
            for (int i = 0; i < length - 3; i++) {
                if (bArr[i] == 79 && bArr[i + 1] == 103 && bArr[i + 2] == 103 && bArr[i + 3] == 83) {
                    ch.AE3(i);
                    return true;
                }
            }
            ch.AE3(length - 3);
        }
    }

    /* JADX INFO: Multiple debug info for r13v0 'this'  com.facebook.ads.redexgen.X.ZJ: [D('position' long), D('currentGranule' long), D('lastPageSearchPosition' long)] */
    @Override // com.facebook.ads.redexgen.X.D9
    public final long ACl(CH ch) throws IOException, InterruptedException {
        long A032;
        int i = this.A00;
        if (i == 0) {
            this.A03 = ch.A71();
            this.A00 = 1;
            long j = this.A08 - 65307;
            if (j > this.A03) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j2 = this.A06;
                if (j2 == 0) {
                    A032 = 0;
                } else {
                    long A012 = A01(j2, ch);
                    if (A012 >= 0) {
                        return A012;
                    }
                    A032 = A03(ch, this.A06, -(A012 + 2));
                }
                this.A00 = 3;
                return -(2 + A032);
            } else if (i == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        }
        this.A07 = A02(ch);
        this.A00 = 3;
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.D9
    public final long AEA(long j) {
        boolean z;
        int i = this.A00;
        if (i == 3 || i == 2) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        long j2 = 0;
        if (j != 0) {
            j2 = this.A0B.A05(j);
        }
        this.A06 = j2;
        this.A00 = 2;
        A0C();
        long j3 = this.A06;
        String[] strArr = A0D;
        if (strArr[5].charAt(24) != strArr[0].charAt(24)) {
            throw new RuntimeException();
        }
        A0D[6] = "l4iEtEKEuRK6wb9mepvhy";
        return j3;
    }
}
