package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;

public final class ZH implements CG, CP {
    public static byte[] A0J;
    public static String[] A0K;
    public static final CJ A0L = new ZG();
    public static final int A0M = C0556Ic.A08(A04(48, 4, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public CI A09;
    public IM A0A;
    public boolean A0B;
    public Cw[] A0C;
    public long[][] A0D;
    public final int A0E;
    public final IM A0F;
    public final IM A0G;
    public final IM A0H;
    public final ArrayDeque<Z9> A0I;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0J = new byte[]{57, 12, 23, 21, 88, 11, 17, 2, 29, 88, 20, 29, 11, 11, 88, 12, 16, 25, 22, 88, 16, 29, 25, 28, 29, 10, 88, 20, 29, 22, 31, 12, 16, 88, 80, 13, 22, 11, 13, 8, 8, 23, 10, 12, 29, 28, 81, 86, 4, 1, 85, 85};
    }

    public static void A08() {
        A0K = new String[]{"0jSfxoXEMfCjtmnyDugkNcQJRjSOySMa", "bnCyjA5DcUmWUqivzOXdDI", "awYt8cnKxKdhDKIItvFTiUYUED9yM0q1", "Luabopmg5NHaS5SoCXeHIbwAQFsLRvJ0", "odfzLqPoxtdmNhQ8QVXSS2", "Wo8IxRBaFRXe4oQbEdt7BomqryNllMGC", "1wQy", "sEQm6Nsu4XqoPKwwi3EdYrJfunZcOKFC"};
    }

    static {
        A08();
        A07();
    }

    public ZH() {
        this(0);
    }

    public ZH(int i) {
        this.A0E = i;
        this.A0F = new IM(16);
        this.A0I = new ArrayDeque<>();
        this.A0H = new IM(II.A03);
        this.A0G = new IM(4);
        this.A06 = -1;
    }

    /* JADX INFO: Multiple debug info for r5v1 int: [D('requiresReload' boolean), D('preferredAccumulatedBytes' long)] */
    private int A00(long preferredSkipAmount) {
        int i;
        long j = Long.MAX_VALUE;
        int i2 = 1;
        int i3 = -1;
        long j2 = Long.MAX_VALUE;
        long j3 = Long.MAX_VALUE;
        int trackIndex = 1;
        int sampleIndex = -1;
        int i4 = 0;
        while (true) {
            Cw[] cwArr = this.A0C;
            if (i4 >= cwArr.length) {
                break;
            }
            Cw cw = cwArr[i4];
            int i5 = cw.A00;
            if (i5 != cw.A03.A01) {
                long j4 = cw.A03.A06[i5];
                long j5 = this.A0D[i4][i5];
                long j6 = j4 - preferredSkipAmount;
                if (j6 < 0 || j6 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i == 0 && i2 != 0) || (i == i2 && j6 < j)) {
                    i2 = i;
                    j = j6;
                    i3 = i4;
                    j2 = j5;
                }
                if (j5 < j3) {
                    j3 = j5;
                    trackIndex = i;
                    sampleIndex = i4;
                }
            }
            i4++;
        }
        int i6 = (j3 > Long.MAX_VALUE ? 1 : (j3 == Long.MAX_VALUE ? 0 : -1));
        if (A0K[5].charAt(28) != 'l') {
            throw new RuntimeException();
        }
        String[] strArr = A0K;
        strArr[7] = "2rf3IkD44HipF2iEZWYVpECLVHr0uALb";
        strArr[0] = "2zlrhAiZVnIklu1FhIrlCsqVaSaq97eM";
        return (i6 == 0 || trackIndex == 0 || j2 < 10485760 + j3) ? i3 : sampleIndex;
    }

    /* JADX INFO: Multiple debug info for r0v7 long: [D('position' long), D('inputPosition' long), D('skipAmount' long)] */
    private int A01(CH ch, CN cn2) throws IOException, InterruptedException {
        int i;
        long A71 = ch.A71();
        if (this.A06 == -1) {
            this.A06 = A00(A71);
            if (this.A06 == -1) {
                return -1;
            }
        }
        Cw cw = this.A0C[this.A06];
        CS cs = cw.A01;
        int i2 = cw.A00;
        long j = cw.A03.A06[i2];
        int i3 = cw.A03.A05[i2];
        long position = (j - A71) + ((long) this.A04);
        if (position < 0 || position >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            cn2.A00 = j;
            return 1;
        }
        if (cw.A02.A02 == 1) {
            position += 8;
            i3 -= 8;
        }
        ch.AE3((int) position);
        if (cw.A02.A01 != 0) {
            byte[] bArr = this.A0G.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i4 = cw.A02.A01;
            int i5 = 4 - cw.A02.A01;
            while (this.A04 < i3) {
                int i6 = this.A05;
                if (i6 == 0) {
                    ch.readFully(this.A0G.A00, i5, i4);
                    this.A0G.A0Z(0);
                    this.A05 = this.A0G.A0I();
                    this.A0H.A0Z(0);
                    cs.ADR(this.A0H, 4);
                    this.A04 += 4;
                    i3 += i5;
                } else {
                    int writtenBytes = cs.ADQ(ch, i6, false);
                    this.A04 += writtenBytes;
                    this.A05 -= writtenBytes;
                }
            }
            i = 0;
        } else {
            while (true) {
                int i7 = this.A04;
                if (i7 >= i3) {
                    break;
                }
                int ADQ = cs.ADQ(ch, i3 - i7, false);
                this.A04 += ADQ;
                this.A05 -= ADQ;
            }
            i = 0;
        }
        cs.ADS(cw.A03.A07[i2], cw.A03.A04[i2], i3, 0, null);
        cw.A00++;
        this.A06 = -1;
        this.A04 = i;
        this.A05 = i;
        return i;
    }

    public static int A02(D5 d5, long j) {
        int A002 = d5.A00(j);
        if (A002 == -1) {
            return d5.A01(j);
        }
        return A002;
    }

    public static long A03(D5 d5, long j, long j2) {
        int A022 = A02(d5, j);
        if (A022 == -1) {
            return j2;
        }
        return Math.min(d5.A06[A022], j2);
    }

    private ArrayList<D5> A05(Z9 z9, CK ck, boolean z) throws AJ {
        D2 A0C2;
        ArrayList<D5> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int size = z9.A01.size();
            String[] strArr = A0K;
            if (strArr[2].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0K;
            strArr2[7] = "cCqXKTxpaVHnB5xhxhubewm2proDizNi";
            strArr2[0] = "XNMFZPcuybbaYtAFLaJvO7GLnY5oO3YZ";
            if (i >= size) {
                return arrayList;
            }
            Z9 z92 = z9.A01.get(i);
            if (((AbstractC0420Ch) z92).A00 == AbstractC0420Ch.A1L && (A0C2 = C0425Cm.A0C(z92, z9.A07(AbstractC0420Ch.A0n), -9223372036854775807L, null, z, this.A0B)) != null) {
                D5 A0E2 = C0425Cm.A0E(A0C2, z92.A06(AbstractC0420Ch.A0d).A06(AbstractC0420Ch.A0h).A06(AbstractC0420Ch.A16), ck);
                if (A0E2.A01 != 0) {
                    arrayList.add(A0E2);
                }
            }
            i++;
        }
    }

    private void A06() {
        this.A03 = 0;
        this.A00 = 0;
    }

    private void A09(long j) throws AJ {
        while (!this.A0I.isEmpty() && this.A0I.peek().A00 == j) {
            Z9 pop = this.A0I.pop();
            if (((AbstractC0420Ch) pop).A00 == AbstractC0420Ch.A0j) {
                A0B(pop);
                this.A0I.clear();
                this.A03 = 2;
            } else if (!this.A0I.isEmpty()) {
                this.A0I.peek().A08(pop);
            }
        }
        if (this.A03 != 2) {
            A06();
        }
    }

    private void A0A(long j) {
        Cw[] cwArr = this.A0C;
        for (Cw cw : cwArr) {
            D5 d5 = cw.A03;
            int A002 = d5.A00(j);
            if (A002 == -1) {
                A002 = d5.A01(j);
            }
            cw.A00 = A002;
        }
    }

    /* JADX INFO: Multiple debug info for r1v4 com.facebook.ads.internal.exoplayer2.Format: [D('trackCount' int), D('maxInputSize' int)] */
    private void A0B(Z9 z9) throws AJ {
        ArrayList<D5> arrayList;
        long j;
        int i = -1;
        long j2 = -9223372036854775807L;
        ArrayList arrayList2 = new ArrayList();
        Metadata metadata = null;
        CK ck = new CK();
        ZA A072 = z9.A07(AbstractC0420Ch.A1P);
        if (!(A072 == null || (metadata = C0425Cm.A0F(A072, this.A0B)) == null)) {
            ck.A06(metadata);
        }
        try {
            arrayList = A05(z9, ck, (this.A0E & 1) != 0);
        } catch (ZD unused) {
            ck = new CK();
            arrayList = A05(z9, ck, true);
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            D5 d5 = arrayList.get(i2);
            D2 d2 = d5.A03;
            Cw cw = new Cw(d2, d5, this.A09.AEM(i2, d2.A03));
            Format A0G2 = d2.A07.A0G(d5.A00 + 30);
            if (d2.A03 == 1) {
                if (ck.A04()) {
                    A0G2 = A0G2.A0H(ck.A00, ck.A01);
                }
                if (metadata != null) {
                    A0G2 = A0G2.A0K(metadata);
                }
            }
            cw.A01.A5P(A0G2);
            if (d2.A04 != -9223372036854775807L) {
                j = d2.A04;
            } else {
                j = d5.A02;
            }
            j2 = Math.max(j2, j);
            if (d2.A03 == 2 && i == -1) {
                i = arrayList2.size();
            }
            arrayList2.add(cw);
        }
        this.A02 = i;
        this.A08 = j2;
        this.A0C = (Cw[]) arrayList2.toArray(new Cw[arrayList2.size()]);
        this.A0D = A0H(this.A0C);
        this.A09.A5B();
        this.A09.ADX(this);
    }

    public static boolean A0C(int i) {
        if (i != AbstractC0420Ch.A0j) {
            int i2 = AbstractC0420Ch.A1L;
            String[] strArr = A0K;
            if (strArr[4].length() != strArr[6].length()) {
                String[] strArr2 = A0K;
                strArr2[2] = "xHWkCkmm9lwx55Xb6ilKRbCBaMi3tx91";
                strArr2[3] = "ufwmFaOIh4ETn2yFiF4b2v05oMaexVS8";
                return i == i2 || i == AbstractC0420Ch.A0d || i == AbstractC0420Ch.A0h || i == AbstractC0420Ch.A16 || i == AbstractC0420Ch.A0N;
            }
            throw new RuntimeException();
        }
    }

    public static boolean A0D(int i) {
        if (!(i == AbstractC0420Ch.A0c || i == AbstractC0420Ch.A0n || i == AbstractC0420Ch.A0V || i == AbstractC0420Ch.A1A || i == AbstractC0420Ch.A1D || i == AbstractC0420Ch.A1B)) {
            int i2 = AbstractC0420Ch.A0C;
            if (A0K[1].length() != 22) {
                throw new RuntimeException();
            }
            A0K[1] = "WjfYMB7jPbcUwDvfNOpuH1";
            return i == i2 || i == AbstractC0420Ch.A0O || i == AbstractC0420Ch.A19 || i == AbstractC0420Ch.A1C || i == AbstractC0420Ch.A1E || i == AbstractC0420Ch.A17 || i == AbstractC0420Ch.A0B || i == AbstractC0420Ch.A1J || i == AbstractC0420Ch.A0U || i == AbstractC0420Ch.A1P;
        }
    }

    /* JADX INFO: Multiple debug info for r9v0 'this'  com.facebook.ads.redexgen.X.ZH: [D('endPosition' long), D('headerBytesRemaining' int)] */
    private boolean A0E(CH ch) throws IOException, InterruptedException {
        boolean z;
        boolean z2;
        if (this.A00 == 0) {
            if (!ch.ACp(this.A0F.A00, 0, 8, true)) {
                return false;
            }
            this.A00 = 8;
            this.A0F.A0Z(0);
            this.A07 = this.A0F.A0N();
            this.A01 = this.A0F.A09();
        }
        long j = this.A07;
        if (j == 1) {
            ch.readFully(this.A0F.A00, 8, 8);
            this.A00 += 8;
            this.A07 = this.A0F.A0O();
        } else if (j == 0) {
            long A6i = ch.A6i();
            if (A6i == -1 && !this.A0I.isEmpty()) {
                A6i = this.A0I.peek().A00;
            }
            if (A6i != -1) {
                this.A07 = (A6i - ch.A71()) + ((long) this.A00);
            }
        }
        if (this.A07 >= ((long) this.A00)) {
            if (A0C(this.A01)) {
                long A71 = (ch.A71() + this.A07) - ((long) this.A00);
                this.A0I.push(new Z9(this.A01, A71));
                if (this.A07 == ((long) this.A00)) {
                    A09(A71);
                } else {
                    A06();
                }
            } else if (A0D(this.A01)) {
                if (this.A00 == 8) {
                    z = true;
                } else {
                    z = false;
                }
                C0551Hx.A04(z);
                if (this.A07 <= 2147483647L) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                C0551Hx.A04(z2);
                this.A0A = new IM((int) this.A07);
                System.arraycopy(this.A0F.A00, 0, this.A0A.A00, 0, 8);
                this.A03 = 1;
            } else {
                this.A0A = null;
                this.A03 = 1;
            }
            return true;
        }
        throw new AJ(A04(0, 48, 100));
    }

    private boolean A0F(CH ch, CN cn2) throws IOException, InterruptedException {
        long j = this.A07 - ((long) this.A00);
        long A71 = ch.A71() + j;
        boolean z = false;
        IM im = this.A0A;
        if (im != null) {
            ch.readFully(im.A00, this.A00, (int) j);
            if (this.A01 == AbstractC0420Ch.A0U) {
                this.A0B = A0G(this.A0A);
            } else if (!this.A0I.isEmpty()) {
                this.A0I.peek().A09(new ZA(this.A01, this.A0A));
            }
        } else if (j < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            ch.AE3((int) j);
        } else {
            cn2.A00 = ch.A71() + j;
            z = true;
        }
        A09(A71);
        return z && this.A03 != 2;
    }

    public static boolean A0G(IM im) {
        im.A0Z(8);
        if (im.A09() == A0M) {
            return true;
        }
        im.A0a(4);
        while (im.A05() > 0) {
            if (im.A09() == A0M) {
                return true;
            }
        }
        return false;
    }

    public static long[][] A0H(Cw[] cwArr) {
        long[][] jArr = new long[cwArr.length][];
        int[] iArr = new int[cwArr.length];
        long[] jArr2 = new long[cwArr.length];
        boolean[] zArr = new boolean[cwArr.length];
        for (int i = 0; i < cwArr.length; i++) {
            jArr[i] = new long[cwArr[i].A03.A01];
            jArr2[i] = cwArr[i].A03.A07[0];
        }
        long j = 0;
        int minTimeTrackIndex = 0;
        while (minTimeTrackIndex < cwArr.length) {
            long j2 = Long.MAX_VALUE;
            int i2 = -1;
            for (int i3 = 0; i3 < cwArr.length; i3++) {
                if (!zArr[i3] && jArr2[i3] <= j2) {
                    i2 = i3;
                    j2 = jArr2[i3];
                }
            }
            int i4 = iArr[i2];
            jArr[i2][i4] = j;
            j += (long) cwArr[i2].A03.A05[i4];
            int i5 = i4 + 1;
            iArr[i2] = i5;
            if (i5 < jArr[i2].length) {
                jArr2[i2] = cwArr[i2].A03.A07[i5];
            } else {
                zArr[i2] = true;
                minTimeTrackIndex++;
            }
        }
        return jArr;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final long A6J() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final CO A77(long secondTimeUs) {
        long j;
        long j2;
        int A012;
        Cw[] cwArr = this.A0C;
        if (cwArr.length == 0) {
            return new CO(CQ.A04);
        }
        long j3 = -9223372036854775807L;
        long j4 = -1;
        int i = this.A02;
        if (i != -1) {
            D5 d5 = cwArr[i].A03;
            int A022 = A02(d5, secondTimeUs);
            if (A022 == -1) {
                return new CO(CQ.A04);
            }
            j2 = d5.A07[A022];
            j = d5.A06[A022];
            if (j2 < secondTimeUs) {
                int i2 = d5.A01 - 1;
                if (A0K[5].charAt(28) == 'l') {
                    String[] strArr = A0K;
                    strArr[4] = "wZC6PUUkwbL39FGS7qgHi4";
                    strArr[6] = "ISWp";
                    if (!(A022 >= i2 || (A012 = d5.A01(secondTimeUs)) == -1 || A012 == A022)) {
                        j3 = d5.A07[A012];
                        j4 = d5.A06[A012];
                    }
                }
                throw new RuntimeException();
            }
        } else {
            j2 = secondTimeUs;
            j = Long.MAX_VALUE;
        }
        int i3 = 0;
        while (true) {
            Cw[] cwArr2 = this.A0C;
            if (A0K[5].charAt(28) != 'l') {
                break;
            }
            String[] strArr2 = A0K;
            strArr2[2] = "HuKpkwhwNffVsg1qOYm34WvQGcpzf7CA";
            strArr2[3] = "OpSxQ7AB5KpfVVm82hohcPrOWAs1xSas";
            if (i3 < cwArr2.length) {
                if (i3 != this.A02) {
                    D5 d52 = cwArr2[i3].A03;
                    j = A03(d52, j2, j);
                    if (j3 != -9223372036854775807L) {
                        j4 = A03(d52, j3, j4);
                    }
                }
                i3++;
            } else {
                CQ cq = new CQ(j2, j);
                if (j3 == -9223372036854775807L) {
                    return new CO(cq);
                }
                return new CO(cq, new CQ(j3, j4));
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A09 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.CP
    public final boolean A8D() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        while (true) {
            int i = this.A03;
            String[] strArr = A0K;
            if (strArr[2].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0K;
            strArr2[7] = "qJxbwGisfZf9YKIw0pjhTsx78598m8MK";
            strArr2[0] = "kX2rligkfJBBB9teOSCW5LaSmFhGBJWo";
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return A01(ch, cn2);
                    }
                    throw new IllegalStateException();
                } else if (A0F(ch, cn2)) {
                    return 1;
                }
            } else if (!A0E(ch)) {
                return -1;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A0I.clear();
        this.A00 = 0;
        this.A06 = -1;
        this.A04 = 0;
        this.A05 = 0;
        if (j == 0) {
            A06();
        } else if (this.A0C != null) {
            A0A(j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        return D0.A05(ch);
    }
}
