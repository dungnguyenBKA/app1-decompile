package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import java.io.IOException;

public final class C8 implements AbstractC1039aW, AbstractC1038aV {
    public static String[] A06;
    public long A00;
    public long A01;
    public long A02;
    public AbstractC1038aV A03;
    public C1026aJ[] A04 = new C1026aJ[0];
    public final AbstractC1039aW A05;

    static {
        A01();
    }

    public static void A01() {
        A06 = new String[]{"xZ98n6jXZ", "w0wM6S1AW5kwd8mBaLXb8IJFUPLi1ZSY", "", "5GeP1Ey0MjdLLaKEOlMigJbDmIHcG3Ps", "Q5WYazqpabUa99ZYxsI", "Gm0HQrfOciURdkrLDtJ", "cUS8ttxVNiquYZeS", "9hpvQN9G3pxye3p4YcQpNMMd2GK"};
    }

    public C8(AbstractC1039aW aWVar, boolean z, long j, long j2) {
        long j3;
        this.A05 = aWVar;
        if (z) {
            j3 = j;
        } else {
            j3 = -9223372036854775807L;
        }
        this.A02 = j3;
        this.A01 = j;
        this.A00 = j2;
    }

    private C0370Ab A00(long j, C0370Ab ab) {
        long j2;
        long A0E = C0556Ic.A0E(ab.A01, 0, j - this.A01);
        long j3 = ab.A00;
        long j4 = this.A00;
        if (j4 == Long.MIN_VALUE) {
            j2 = Long.MAX_VALUE;
        } else {
            j2 = j4 - j;
        }
        long A0E2 = C0556Ic.A0E(j3, 0, j2);
        if (A0E == ab.A01 && A0E2 == ab.A00) {
            return ab;
        }
        return new C0370Ab(A0E, A0E2);
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A9p(AbstractC1039aW aWVar) {
        this.A03.A9p(this);
    }

    public static boolean A03(long j, H4[] h4Arr) {
        if (j != 0) {
            for (H4 h4 : h4Arr) {
                if (!(h4 == null || IF.A0A(h4.A78().A0O))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean A04() {
        return this.A02 != -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final boolean A4B(long j) {
        return this.A05.A4B(j);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void A4o(long j, boolean z) {
        this.A05.A4o(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A5X(long j, C0370Ab ab) {
        long j2 = this.A01;
        if (j == j2) {
            return j2;
        }
        return this.A05.A5X(j, A00(j, ab));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A5m() {
        long A5m = this.A05.A5m();
        if (A5m != Long.MIN_VALUE) {
            long j = this.A00;
            if (j == Long.MIN_VALUE || A5m < j) {
                return A5m;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A6o() {
        long A6o = this.A05.A6o();
        if (A6o != Long.MIN_VALUE) {
            long j = this.A00;
            if (j == Long.MIN_VALUE || A6o < j) {
                return A6o;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final TrackGroupArray A7O() {
        return this.A05.A7O();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void A90() throws IOException {
        this.A05.A90();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1038aV
    public final void ABF(AbstractC1039aW aWVar) {
        this.A03.ABF(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void ACV(AbstractC1038aV aVVar, long j) {
        this.A03 = aVVar;
        this.A05.ACV(this, j);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long ACo() {
        boolean z;
        if (A04()) {
            long j = this.A02;
            this.A02 = -9223372036854775807L;
            long ACo = ACo();
            return ACo != -9223372036854775807L ? ACo : j;
        }
        long ACo2 = this.A05.ACo();
        String[] strArr = A06;
        if (strArr[7].length() != strArr[2].length()) {
            String[] strArr2 = A06;
            strArr2[5] = "JN4lYhgdVtJugUzGLO1";
            strArr2[4] = "V7PIoeFvQi5pkabjQnk";
            if (ACo2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            boolean z2 = true;
            if (ACo2 >= this.A01) {
                z = true;
            } else {
                z = false;
            }
            C0551Hx.A04(z);
            long discontinuityUs = this.A00;
            if (discontinuityUs != Long.MIN_VALUE && ACo2 > discontinuityUs) {
                z2 = false;
            }
            C0551Hx.A04(z2);
            return ACo2;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void ACv(long j) {
        this.A05.ACv(j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r5 > r3) goto L_0x0035;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long ADa(long r9) {
        /*
            r8 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8.A02 = r0
            com.facebook.ads.redexgen.X.aJ[] r3 = r8.A04
            int r2 = r3.length
            r7 = 0
            r1 = 0
        L_0x000c:
            if (r1 >= r2) goto L_0x0018
            r0 = r3[r1]
            if (r0 == 0) goto L_0x0015
            r0.A01()
        L_0x0015:
            int r1 = r1 + 1
            goto L_0x000c
        L_0x0018:
            com.facebook.ads.redexgen.X.aW r0 = r8.A05
            long r5 = r0.ADa(r9)
            int r0 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            long r1 = r8.A01
            int r0 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0035
            long r3 = r8.A00
            r1 = -9223372036854775808
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 > 0) goto L_0x0035
        L_0x0034:
            r7 = 1
        L_0x0035:
            com.facebook.ads.redexgen.X.C0551Hx.A04(r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8.ADa(long):long");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r7 > r1) goto L_0x0090;
     */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0065  */
    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long ADb(com.facebook.ads.redexgen.X.H4[] r16, boolean[] r17, com.facebook.ads.redexgen.X.FZ[] r18, boolean[] r19, long r20) {
        /*
        // Method dump skipped, instructions count: 153
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8.ADb(com.facebook.ads.redexgen.X.H4[], boolean[], com.facebook.ads.redexgen.X.FZ[], boolean[], long):long");
    }
}
