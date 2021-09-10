package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.source.TrackGroup;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.Arrays;

public final class C5 implements AbstractC1039aW, CI, HT<C1034aR>, HW, FY {
    public static byte[] A0c;
    public static String[] A0d;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public CP A07;
    public AbstractC1038aV A08;
    public TrackGroupArray A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public int[] A0J;
    public C1040aX[] A0K;
    public boolean[] A0L;
    public boolean[] A0M;
    public boolean[] A0N;
    public final int A0O;
    public final long A0P;
    public final Uri A0Q;
    public final Handler A0R;
    public final F8 A0S;
    public final F9 A0T;
    public final FP A0U;
    public final HA A0V;
    public final HI A0W;
    public final C1092bN A0X = new C1092bN(A07(0, 27, 82));
    public final I3 A0Y;
    public final Runnable A0Z;
    public final Runnable A0a;
    public final String A0b;

    static {
        A0C();
        A0B();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0c, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0d[7].length() != 22) {
                throw new RuntimeException();
            }
            A0d[2] = "Up";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 120);
            i4++;
        }
    }

    public static void A0B() {
        A0c = new byte[]{102, 69, 75, 78, 79, 88, 16, 111, 82, 94, 88, 75, 73, 94, 69, 88, 103, 79, 78, 67, 75, 122, 79, 88, 67, 69, 78};
    }

    public static void A0C() {
        A0d = new String[]{"iI0ZOGUFhjVKOFZqbUjTJbzZriBk", "wCM5SpVnQk8vEGvx3xuFkFQnwN8gnHkn", "CC", "sZUrtXRAji2vfBWVwphN9cenOJ8FQWpp", "F506DqgxlNyYyNAR0eHuGAxqIBb0RwxX", "mj8nEZtHpBznvwUNQKJPsV2u1H4", "sYtV3FATfn8NsU7nH3", "hZDPske6mXbyt4vhVom9Ng"};
    }

    public C5(Uri uri, HI hi, CG[] cgArr, int i, FP fp, F9 f9, HA ha, String str, int i2) {
        this.A0Q = uri;
        this.A0W = hi;
        this.A0O = i;
        this.A0U = fp;
        this.A0T = f9;
        this.A0V = ha;
        this.A0b = str;
        this.A0P = (long) i2;
        this.A0S = new F8(cgArr, this);
        this.A0Y = new I3();
        this.A0Z = new F6(this);
        this.A0a = new F7(this);
        this.A0R = new Handler();
        this.A0J = new int[0];
        this.A0K = new C1040aX[0];
        this.A06 = -9223372036854775807L;
        this.A05 = -1;
        this.A03 = -9223372036854775807L;
        this.A00 = i == -1 ? 3 : i;
        fp.A04();
    }

    private int A00() {
        int i = 0;
        C1040aX[] aXVarArr = this.A0K;
        for (C1040aX aXVar : aXVarArr) {
            String[] strArr = A0d;
            if (strArr[5].length() != strArr[0].length()) {
                String[] strArr2 = A0d;
                strArr2[3] = "qSOUgbz3JlJaX9UdXA1gn9agrJ83m9Y6";
                strArr2[1] = "wkCF1xtIBevCyUX610AjJpYT598Om9ct";
                i += aXVar.A0D();
            } else {
                throw new RuntimeException();
            }
        }
        return i;
    }

    /* access modifiers changed from: public */
    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final int AAd(C1034aR aRVar, long j, long j2, IOException iOException) {
        boolean z;
        boolean isErrorFatal = A0O(iOException);
        this.A0U.A0I(aRVar.A03, 1, -1, null, 0, null, aRVar.A02, this.A03, j, j2, aRVar.A00, iOException, isErrorFatal);
        A0F(aRVar);
        if (isErrorFatal) {
            return 3;
        }
        int A002 = A00();
        if (A002 > this.A02) {
            z = true;
        } else {
            z = false;
        }
        if (!A0M(aRVar, A002)) {
            return 2;
        }
        if (z) {
            return 1;
        }
        return 0;
    }

    private long A02() {
        long j = Long.MIN_VALUE;
        C1040aX[] aXVarArr = this.A0K;
        for (C1040aX aXVar : aXVarArr) {
            if (A0d[6].length() != 18) {
                throw new RuntimeException();
            }
            A0d[6] = "ZyGj31aUIwj7oXhThZ";
            j = Math.max(j, aXVar.A0G());
        }
        return j;
    }

    private void A09() {
        if (!this.A0G && !this.A0F && this.A07 != null && this.A0H) {
            for (C1040aX sampleQueue : this.A0K) {
                if (sampleQueue.A0H() == null) {
                    return;
                }
            }
            this.A0Y.A02();
            int length = this.A0K.length;
            TrackGroup[] trackGroupArr = new TrackGroup[length];
            this.A0N = new boolean[length];
            this.A0L = new boolean[length];
            this.A0M = new boolean[length];
            this.A03 = this.A07.A6J();
            int i = 0;
            while (true) {
                boolean z = true;
                if (i < length) {
                    Format A0H2 = this.A0K[i].A0H();
                    trackGroupArr[i] = new TrackGroup(A0H2);
                    String str = A0H2.A0O;
                    if (!IF.A0C(str)) {
                        boolean A0A2 = IF.A0A(str);
                        if (A0d[7].length() != 22) {
                            throw new RuntimeException();
                        }
                        A0d[4] = "sORkCePcQUNrHwPTmIu9z8sBJIN6eDJt";
                        if (!A0A2) {
                            z = false;
                        }
                    }
                    this.A0N[i] = z;
                    this.A0A |= z;
                    i++;
                } else {
                    this.A09 = new TrackGroupArray(trackGroupArr);
                    if (this.A0O == -1 && this.A05 == -1 && this.A07.A6J() == -9223372036854775807L) {
                        this.A00 = 6;
                    }
                    this.A0F = true;
                    this.A0T.ABd(this.A03, this.A07.A8D());
                    this.A08.ABF(this);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Multiple debug info for r15v0 'this'  com.facebook.ads.redexgen.X.C5: [D('elapsedRealtimeMs' long), D('loadable' com.facebook.ads.redexgen.X.aR)] */
    private void A0A() {
        C1034aR aRVar = new C1034aR(this, this.A0Q, this.A0W, this.A0S, this.A0Y);
        if (this.A0F) {
            C0551Hx.A04(A0J());
            long j = this.A03;
            if (j == -9223372036854775807L || this.A06 < j) {
                aRVar.A05(this.A07.A77(this.A06).A00.A00, this.A06);
                this.A06 = -9223372036854775807L;
            } else {
                this.A0B = true;
                this.A06 = -9223372036854775807L;
                return;
            }
        }
        this.A02 = A00();
        this.A0U.A0F(aRVar.A03, 1, -1, null, 0, null, aRVar.A02, this.A03, this.A0X.A05(aRVar, this, this.A00));
    }

    private void A0D(int i) {
        if (!this.A0M[i]) {
            Format A022 = this.A09.A02(i).A02(0);
            this.A0U.A07(IF.A01(A022.A0O), A022, 0, null, this.A04);
            this.A0M[i] = true;
        }
    }

    private void A0E(int i) {
        if (this.A0E && this.A0N[i] && !this.A0K[i].A0N()) {
            this.A06 = 0;
            this.A0E = false;
            this.A0D = true;
            this.A04 = 0;
            this.A02 = 0;
            for (C1040aX sampleQueue : this.A0K) {
                sampleQueue.A0J();
            }
            this.A08.A9p(this);
        }
    }

    private void A0F(C1034aR aRVar) {
        if (this.A05 == -1) {
            this.A05 = aRVar.A01;
        }
    }

    /* access modifiers changed from: public */
    /* access modifiers changed from: private */
    /* renamed from: A0G */
    public final void AAc(C1034aR aRVar, long j, long j2) {
        long largestQueuedTimestampUs;
        if (this.A03 == -9223372036854775807L) {
            long A022 = A02();
            if (A022 == Long.MIN_VALUE) {
                largestQueuedTimestampUs = 0;
            } else {
                largestQueuedTimestampUs = 10000 + A022;
            }
            this.A03 = largestQueuedTimestampUs;
            this.A0T.ABd(this.A03, this.A07.A8D());
        }
        this.A0U.A0H(aRVar.A03, 1, -1, null, 0, null, aRVar.A02, this.A03, j, j2, aRVar.A00);
        A0F(aRVar);
        this.A0B = true;
        this.A08.A9p(this);
    }

    /* access modifiers changed from: public */
    /* access modifiers changed from: private */
    /* renamed from: A0H */
    public final void AAa(C1034aR aRVar, long j, long j2, boolean z) {
        this.A0U.A0G(aRVar.A03, 1, -1, null, 0, null, aRVar.A02, this.A03, j, j2, aRVar.A00);
        if (!z) {
            A0F(aRVar);
            for (C1040aX aXVar : this.A0K) {
                aXVar.A0J();
            }
            if (this.A01 > 0) {
                this.A08.A9p(this);
            }
        }
    }

    private boolean A0J() {
        return this.A06 != -9223372036854775807L;
    }

    private boolean A0K() {
        if (!this.A0D) {
            boolean A0J2 = A0J();
            if (A0d[4].charAt(6) != 'Y') {
                A0d[7] = "wEe5Kid34hKwvsAXbAWEFW";
                return A0J2;
            }
            throw new RuntimeException();
        }
    }

    private boolean A0L(long j) {
        int length = this.A0K.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            C1040aX sampleQueue = this.A0K[i];
            sampleQueue.A0K();
            if (sampleQueue.A0E(j, true, false) == -1) {
                z = false;
            }
            if (z || (!this.A0N[i] && this.A0A)) {
                i++;
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0031, code lost:
        if (r7 != -9223372036854775807L) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean A0M(com.facebook.ads.redexgen.X.C1034aR r10, int r11) {
        /*
        // Method dump skipped, instructions count: 128
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C5.A0M(com.facebook.ads.redexgen.X.aR, int):boolean");
    }

    public static boolean A0O(IOException iOException) {
        return iOException instanceof C1046ad;
    }

    public final int A0P(int skipCount, long j) {
        int A0E2;
        if (A0K()) {
            return 0;
        }
        C1040aX aXVar = this.A0K[skipCount];
        if (!this.A0B || j <= aXVar.A0G()) {
            A0E2 = aXVar.A0E(j, true, true);
            if (A0E2 == -1) {
                A0E2 = 0;
            }
        } else {
            A0E2 = aXVar.A0B();
        }
        if (A0E2 > 0) {
            A0D(skipCount);
        } else {
            A0E(skipCount);
        }
        return A0E2;
    }

    public final int A0Q(int i, AD ad, YY yy, boolean z) {
        if (A0K()) {
            return -3;
        }
        C1040aX aXVar = this.A0K[i];
        boolean z2 = this.A0B;
        long j = this.A04;
        if (A0d[6].length() != 18) {
            throw new RuntimeException();
        }
        A0d[4] = "BZZhA5HnQ267vlJC28K7sY9wv6QGzHwf";
        int A0F2 = aXVar.A0F(ad, yy, z, z2, j);
        if (A0F2 == -4) {
            A0D(i);
        } else if (A0F2 == -3) {
            A0E(i);
        }
        return A0F2;
    }

    public final void A0R() {
        this.A0X.A07(this.A00);
    }

    public final void A0S() {
        if (this.A0F) {
            for (C1040aX aXVar : this.A0K) {
                aXVar.A0I();
            }
        }
        this.A0X.A08(this);
        this.A0R.removeCallbacksAndMessages(null);
        this.A08 = null;
        this.A0G = true;
        this.A0U.A05();
    }

    public final boolean A0T(int i) {
        return !A0K() && (this.A0B || this.A0K[i].A0N());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final boolean A4B(long j) {
        if (this.A0B || this.A0E) {
            return false;
        }
        if (this.A0F) {
            int i = this.A01;
            if (A0d[4].charAt(6) != 'Y') {
                A0d[4] = "7rVHsGRdVZCry1KpVG9eopTEFKGRMHdR";
                if (i == 0) {
                    return false;
                }
            } else {
                throw new RuntimeException();
            }
        }
        boolean A032 = this.A0Y.A03();
        if (this.A0X.A09()) {
            return A032;
        }
        A0A();
        String[] strArr = A0d;
        if (strArr[5].length() != strArr[0].length()) {
            A0d[4] = "GZZ8Yg3MT0LKLUTCQO9quz1OXrB3914Q";
            return true;
        }
        A0d[4] = "KAHjzw5ailzTQNPlHwAo2zZrrjfyTj4F";
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void A4o(long j, boolean z) {
        int length = this.A0K.length;
        for (int i = 0; i < length; i++) {
            this.A0K[i].A0L(j, z, this.A0L[i]);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CI
    public final void A5B() {
        this.A0H = true;
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A5X(long j, C0370Ab ab) {
        if (!this.A07.A8D()) {
            return 0;
        }
        CO A77 = this.A07.A77(j);
        return C0556Ic.A0I(j, ab, A77.A00.A01, A77.A01.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A5m() {
        long j;
        if (this.A0B) {
            return Long.MIN_VALUE;
        }
        if (A0J()) {
            long j2 = this.A06;
            if (A0d[6].length() == 18) {
                A0d[4] = "v1DtQTmxA3FTsqocwnKPSJWZapJDPMlv";
                return j2;
            }
        } else {
            if (this.A0A) {
                j = Long.MAX_VALUE;
                if (A0d[6].length() == 18) {
                    A0d[7] = "vaKypmx8P8ApWe5d9yUSyn";
                    int length = this.A0K.length;
                    for (int i = 0; i < length; i++) {
                        if (this.A0N[i]) {
                            C1040aX aXVar = this.A0K[i];
                            String[] strArr = A0d;
                            if (strArr[5].length() != strArr[0].length()) {
                                A0d[7] = "ClOx81htkGLxdwhy5PY2qE";
                                j = Math.min(j, aXVar.A0G());
                            } else {
                                throw new RuntimeException();
                            }
                        }
                    }
                }
            } else {
                j = A02();
            }
            if (j == Long.MIN_VALUE) {
                return this.A04;
            }
            return j;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long A6o() {
        if (this.A01 == 0) {
            return Long.MIN_VALUE;
        }
        return A5m();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final TrackGroupArray A7O() {
        return this.A09;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void A90() {
        A0R();
    }

    @Override // com.facebook.ads.redexgen.X.HW
    public final void AAh() {
        for (C1040aX aXVar : this.A0K) {
            aXVar.A0J();
        }
        this.A0S.A04();
    }

    @Override // com.facebook.ads.redexgen.X.FY
    public final void ABv(Format format) {
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void ACV(AbstractC1038aV aVVar, long j) {
        this.A08 = aVVar;
        this.A0Y.A03();
        A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long ACo() {
        if (!this.A0C) {
            this.A0U.A06();
            this.A0C = true;
        }
        if (!this.A0D) {
            return -9223372036854775807L;
        }
        if (!this.A0B && A00() <= this.A02) {
            return -9223372036854775807L;
        }
        this.A0D = false;
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final void ACv(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.CI
    public final void ADX(CP cp) {
        this.A07 = cp;
        this.A0R.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    public final long ADa(long j) {
        if (!this.A07.A8D()) {
            j = 0;
        }
        this.A04 = j;
        this.A0D = false;
        if (!A0J() && A0L(j)) {
            return j;
        }
        this.A0E = false;
        this.A06 = j;
        this.A0B = false;
        if (this.A0X.A09()) {
            this.A0X.A06();
        } else {
            for (C1040aX sampleQueue : this.A0K) {
                sampleQueue.A0J();
            }
        }
        return j;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0108, code lost:
        if (r8.A09() != false) goto L_0x010a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0122, code lost:
        if (r8.A09() != false) goto L_0x010a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0125, code lost:
        r4 = r12.A0K;
        r3 = r4.length;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0128, code lost:
        if (r7 >= r3) goto L_0x0163;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x012a, code lost:
        r4[r7].A0J();
        r7 = r7 + 1;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC1039aW
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long ADb(com.facebook.ads.redexgen.X.H4[] r13, boolean[] r14, com.facebook.ads.redexgen.X.FZ[] r15, boolean[] r16, long r17) {
        /*
        // Method dump skipped, instructions count: 364
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C5.ADb(com.facebook.ads.redexgen.X.H4[], boolean[], com.facebook.ads.redexgen.X.FZ[], boolean[], long):long");
    }

    /* JADX INFO: Multiple debug info for r5v0 int: [D('i' int), D('trackOutput' com.facebook.ads.redexgen.X.aX)] */
    @Override // com.facebook.ads.redexgen.X.CI
    public final CS AEM(int i, int i2) {
        int length = this.A0K.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.A0J[i3] == i) {
                return this.A0K[i3];
            }
        }
        C1040aX aXVar = new C1040aX(this.A0V);
        aXVar.A0M(this);
        this.A0J = Arrays.copyOf(this.A0J, length + 1);
        this.A0J[length] = i;
        this.A0K = (C1040aX[]) Arrays.copyOf(this.A0K, length + 1);
        this.A0K[length] = aXVar;
        return aXVar;
    }
}
