package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.Dz */
public final class C0454Dz implements Handler.Callback, AbstractC1038aV, H6, FD, AbstractC03669x, AU {
    public static byte[] A0V;
    public static String[] A0W;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public A9 A04;
    public AK A05;
    public C0370Ab A06;
    public FE A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public YH[] A0C;
    public final long A0D;
    public final Handler A0E;
    public final HandlerThread A0F;
    public final YB A0G;
    public final YF A0H;
    public final A8 A0I;
    public final AF A0J;
    public final AI A0K = new AI();
    public final C0371Ad A0L;
    public final C0372Ae A0M;
    public final H7 A0N;
    public final H8 A0O;
    public final I0 A0P;
    public final IA A0Q;
    public final ArrayList<A7> A0R;
    public final boolean A0S;
    public final YH[] A0T;
    public final AY[] A0U;

    static {
        A0L();
        A0K();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0V, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A0K() {
        A0V = new byte[]{40, 21, 2, 61, 1, 12, 20, 8, 31, 36, 0, 29, 1, 36, 3, 25, 8, 31, 3, 12, 1, 40, 21, 2, 61, 1, 12, 20, 8, 31, 36, 0, 29, 1, 36, 3, 25, 8, 31, 3, 12, 1, 87, 37, 12, 3, 9, 1, 8, 31, 25, 55, 62, 63, 34, 57, 62, 55, 112, 61, 53, 35, 35, 49, 55, 53, 35, 112, 35, 53, 62, 36, 112, 49, 54, 36, 53, 34, 112, 34, 53, 60, 53, 49, 35, 53, 126, 71, 96, 122, 107, 124, 96, 111, 98, 46, 124, 123, 96, 122, 103, 99, 107, 46, 107, 124, 124, 97, 124, 32, 50, 14, 3, 27, 0, 3, 1, 9, 66, 7, 16, 16, 13, 16, 76, 102, 90, 64, 71, 86, 80, 21, 80, 71, 71, 90, 71, 27, 74, 109, 118, 105, 57, Byte.MAX_VALUE, 120, 112, 117, 124, 125, 55, 119, 124, 64, 124, 126, 118, 68, 124, 97, 120};
    }

    public static void A0L() {
        A0W = new String[]{"86glHvEVsTHsOarjgO3yrK", "TuAJpp7uzbfmMtpdLTRiZnKK78MiZtWb", "2J1ujHTPZohQZteX1j6kCS7zhajZ8mZI", "eCxkC7v7XtRVNueTNXvbthBaIEqCwNNl", "l3Yyub2xLFiYeWCCac", "TG0XkoHYQCfebcNj4J", "6SVWI1Jvh0Z3jrcRBB9hLc8AjjQAtTry", "lVbeqNrXIfO7zu9EZv7JtI"};
    }

    public C0454Dz(YH[] yhArr, H7 h7, H8 h8, AF af, boolean z, int i, boolean z2, Handler handler, YF yf, I0 i0) {
        this.A0T = yhArr;
        this.A0N = h7;
        this.A0O = h8;
        this.A0J = af;
        this.A08 = z;
        this.A02 = i;
        this.A0B = z2;
        this.A0E = handler;
        this.A0H = yf;
        this.A0P = i0;
        this.A0D = af.A5f();
        this.A0S = af.ADP();
        this.A06 = C0370Ab.A03;
        this.A05 = new AK(AbstractC0373Af.A01, -9223372036854775807L, TrackGroupArray.A04, h8);
        this.A0I = new A8(null);
        this.A0U = new AY[yhArr.length];
        for (int i2 = 0; i2 < yhArr.length; i2++) {
            yhArr[i2].ADk(i2);
            this.A0U[i2] = yhArr[i2].A5q();
        }
        this.A0G = new YB(this, i0);
        this.A0R = new ArrayList<>();
        this.A0C = new YH[0];
        this.A0M = new C0372Ae();
        this.A0L = new C0371Ad();
        h7.A00(this);
        this.A0F = new HandlerThread(A06(21, 29, 15), -16);
        this.A0F.start();
        this.A0Q = i0.A4J(this.A0F.getLooper(), this);
    }

    private int A00() {
        AbstractC0373Af af = this.A05.A03;
        if (af.A0F()) {
            return 0;
        }
        return af.A0C(af.A06(this.A0B), this.A0M).A00;
    }

    private int A01(int i, AbstractC0373Af af, AbstractC0373Af af2) {
        int maxIterations = i;
        int i2 = -1;
        int A012 = af.A01();
        for (int i3 = 0; i3 < A012 && i2 == -1; i3++) {
            maxIterations = af.A04(maxIterations, this.A0L, this.A0M, this.A02, this.A0B);
            if (maxIterations == -1) {
                break;
            }
            i2 = af2.A05(af.A0B(maxIterations, this.A0L, true).A03);
        }
        return i2;
    }

    private long A02(FC fc, long j) {
        boolean z;
        if (this.A0K.A0H() != this.A0K.A0I()) {
            z = true;
        } else {
            z = false;
        }
        return A03(fc, j, z);
    }

    private long A03(FC fc, long j, boolean z) {
        A0H();
        this.A09 = false;
        A0O(2);
        AG A0H2 = this.A0K.A0H();
        AG newPlayingPeriodHolder = A0H2;
        while (true) {
            if (newPlayingPeriodHolder == null) {
                break;
            } else if (A0u(fc, j, newPlayingPeriodHolder)) {
                this.A0K.A0T(newPlayingPeriodHolder);
                break;
            } else {
                newPlayingPeriodHolder = this.A0K.A0D();
            }
        }
        if (A0H2 != newPlayingPeriodHolder || z) {
            YH[] yhArr = this.A0C;
            int length = yhArr.length;
            if (A0W[5].length() == 18) {
                A0W[4] = "MfZ5b0v7S5HL";
                int i = 0;
                while (true) {
                    if (i >= length) {
                        this.A0C = new YH[0];
                        A0H2 = null;
                        break;
                    }
                    YH yh = yhArr[i];
                    if (A0W[6].charAt(23) == 'j') {
                        break;
                    }
                    A0W[4] = "gre2iAEzIfwakAGQE6Y0w4gvRDGAgj";
                    A0c(yh);
                    i++;
                }
            }
            throw new RuntimeException();
        }
        if (newPlayingPeriodHolder != null) {
            A0W(A0H2);
            boolean z2 = newPlayingPeriodHolder.A05;
            String[] strArr = A0W;
            if (strArr[1].charAt(27) != strArr[2].charAt(27)) {
                A0W[5] = "xpv6IUpjcorvZnU437";
                if (z2) {
                    j = newPlayingPeriodHolder.A08.ADa(j);
                    newPlayingPeriodHolder.A08.A4o(j - this.A0D, this.A0S);
                }
                A0Q(j);
                A09();
            }
            throw new RuntimeException();
        }
        this.A0K.A0P(true);
        A0Q(j);
        this.A0Q.ADc(2);
        return j;
    }

    private Pair<Integer, Long> A04(A9 a9, boolean z) {
        int A012;
        AbstractC0373Af af = this.A05.A03;
        AbstractC0373Af af2 = a9.A02;
        if (af.A0F()) {
            return null;
        }
        if (af2.A0F()) {
            af2 = af;
        }
        try {
            Pair<Integer, Long> A082 = af2.A08(this.A0M, this.A0L, a9.A00, a9.A01);
            if (af == af2) {
                return A082;
            }
            int A052 = af.A05(af2.A0B(((Integer) A082.first).intValue(), this.A0L, true).A03);
            if (A052 != -1) {
                Integer valueOf = Integer.valueOf(A052);
                Object obj = A082.second;
                if (A0W[5].length() != 18) {
                    throw new RuntimeException();
                }
                A0W[4] = "NzmvKaw5D7qN";
                return Pair.create(valueOf, obj);
            } else if (!z || (A012 = A01(((Integer) A082.first).intValue(), af2, af)) == -1) {
                return null;
            } else {
                int i = af.A0A(A012, this.A0L).A00;
                String[] strArr = A0W;
                if (strArr[1].charAt(27) == strArr[2].charAt(27)) {
                    return A05(af, i, -9223372036854775807L);
                }
                A0W[4] = "Yw40DLhiFndXC7wfBusX4OUMnHZHVu";
                return A05(af, i, -9223372036854775807L);
            }
        } catch (IndexOutOfBoundsException unused) {
            throw new AE(af, a9.A00, a9.A01);
        }
    }

    private Pair<Integer, Long> A05(AbstractC0373Af af, int i, long j) {
        return af.A08(this.A0M, this.A0L, i, j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0196, code lost:
        if (r8 != false) goto L_0x0198;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x019c, code lost:
        if (r16.A05.A00 != 3) goto L_0x019e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x01a2, code lost:
        if (r16.A05.A00 != 2) goto L_0x01ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        A0S(r2, 10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x01a9, code lost:
        com.facebook.ads.redexgen.X.IZ.A00();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x01ac, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01b0, code lost:
        if (r16.A0C.length == 0) goto L_0x01be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x01b6, code lost:
        if (r16.A05.A00 == 4) goto L_0x01be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01b8, code lost:
        A0S(r2, 1000);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x01be, code lost:
        r16.A0Q.AD9(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x01d0, code lost:
        if (r8 != false) goto L_0x0198;
     */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x01d3  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x008e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A07() {
        /*
        // Method dump skipped, instructions count: 479
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0454Dz.A07():void");
    }

    private void A08() {
        A0O(4);
        A0p(false, true, false);
    }

    private void A09() {
        AG A0G2 = this.A0K.A0G();
        long A072 = A0G2.A07();
        if (A072 == Long.MIN_VALUE) {
            A0l(false);
            return;
        }
        boolean ADv = this.A0J.ADv(A072 - A0G2.A09(this.A03), this.A0G.A70().A01);
        A0l(ADv);
        if (ADv) {
            A0G2.A0G(this.A03);
        }
    }

    private void A0A() {
        int i;
        if (this.A0I.A06(this.A05)) {
            Handler handler = this.A0E;
            int i2 = this.A0I.A01;
            if (this.A0I.A03) {
                i = this.A0I.A00;
            } else {
                i = -1;
            }
            handler.obtainMessage(0, i2, i, this.A05).sendToTarget();
            this.A0I.A05(this.A05);
        }
    }

    /* JADX INFO: Multiple debug info for r0v4 com.facebook.ads.redexgen.X.YH: [D('renderer' com.facebook.ads.redexgen.X.YH), D('readingPeriodHolder' com.facebook.ads.redexgen.X.AG)] */
    private void A0B() {
        AG A0G2 = this.A0K.A0G();
        AG A0I2 = this.A0K.A0I();
        if (!(A0G2 == null || A0G2.A06)) {
            if (A0I2 == null || A0I2.A01 == A0G2) {
                for (YH renderer : this.A0C) {
                    if (!renderer.A7c()) {
                        return;
                    }
                }
                A0G2.A08.A90();
            }
        }
    }

    private void A0C() {
        this.A0K.A0N(this.A03);
        if (this.A0K.A0R()) {
            AH A0J2 = this.A0K.A0J(this.A03, this.A05);
            if (A0J2 == null) {
                this.A07.A91();
                return;
            }
            this.A0K.A0L(this.A0U, this.A0N, this.A0J.A5a(), this.A07, this.A05.A03.A0B(A0J2.A04.A02, this.A0L, true).A03, A0J2).ACV(this, A0J2.A03);
            A0l(true);
        }
    }

    private void A0D() {
        A0p(true, true, true);
        this.A0J.ABO();
        A0O(1);
        this.A0F.quit();
        synchronized (this) {
            this.A0A = true;
            notifyAll();
        }
    }

    private void A0E() {
        boolean z;
        if (this.A0K.A0Q()) {
            float f = this.A0G.A70().A01;
            AG A0H2 = this.A0K.A0H();
            AG A0I2 = this.A0K.A0I();
            boolean z2 = true;
            while (A0H2 != null && A0H2.A06) {
                if (A0H2.A0J(f)) {
                    if (z2) {
                        AG A0H3 = this.A0K.A0H();
                        boolean A0T2 = this.A0K.A0T(A0H3);
                        boolean[] zArr = new boolean[this.A0T.length];
                        long A0C2 = A0H3.A0C(this.A05.A0A, A0T2, zArr);
                        A0j(A0H3.A03, A0H3.A04);
                        if (!(this.A05.A00 == 4 || A0C2 == this.A05.A0A)) {
                            AK ak = this.A05;
                            this.A05 = ak.A04(ak.A04, A0C2, this.A05.A01);
                            this.A0I.A04(4);
                            A0Q(A0C2);
                        }
                        int i = 0;
                        boolean[] zArr2 = new boolean[this.A0T.length];
                        int i2 = 0;
                        while (true) {
                            YH[] yhArr = this.A0T;
                            if (i2 >= yhArr.length) {
                                this.A05 = this.A05.A05(A0H3.A03, A0H3.A04);
                                A0q(zArr2, i);
                                break;
                            }
                            YH yh = yhArr[i2];
                            if (yh.A7F() != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            zArr2[i2] = z;
                            FZ fz = A0H3.A0A[i2];
                            if (fz != null) {
                                i++;
                            }
                            if (zArr2[i2]) {
                                FZ A7K = yh.A7K();
                                if (A0W[4].length() != 29) {
                                    A0W[4] = "CIOLNyaJNw";
                                    if (fz != A7K) {
                                        A0c(yh);
                                    } else if (zArr[i2]) {
                                        yh.ADO(this.A03);
                                    }
                                } else {
                                    throw new RuntimeException();
                                }
                            }
                            i2++;
                        }
                    } else {
                        this.A0K.A0T(A0H2);
                        if (A0H2.A06) {
                            A0H2.A0B(Math.max(A0H2.A02.A03, A0H2.A09(this.A03)), false);
                            A0j(A0H2.A03, A0H2.A04);
                        }
                    }
                    if (this.A05.A00 != 4) {
                        A09();
                        A0J();
                        this.A0Q.ADc(2);
                        return;
                    }
                    return;
                }
                if (A0H2 == A0I2) {
                    z2 = false;
                }
                A0H2 = A0H2.A01;
            }
        }
    }

    private void A0F() {
        for (int size = this.A0R.size() - 1; size >= 0; size--) {
            if (!A0s(this.A0R.get(size))) {
                this.A0R.get(size).A03.A0A(false);
                this.A0R.remove(size);
            }
        }
        Collections.sort(this.A0R);
    }

    private void A0G() {
        this.A09 = false;
        this.A0G.A05();
        for (YH yh : this.A0C) {
            yh.start();
        }
    }

    private void A0H() {
        this.A0G.A06();
        for (YH yh : this.A0C) {
            A0d(yh);
        }
    }

    /* JADX INFO: Multiple debug info for r0v27 boolean: [D('renderer' com.facebook.ads.redexgen.X.YH), D('rendererWasEnabled' boolean)] */
    /* JADX INFO: Multiple debug info for r0v40 com.facebook.ads.redexgen.X.AZ: [D('newConfig' com.facebook.ads.redexgen.X.AZ), D('newRendererEnabled' boolean)] */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0143, code lost:
        if (r4 != 0) goto L_0x0145;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x01d2, code lost:
        if (r4 != 0) goto L_0x0145;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x01d6, code lost:
        r13 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A0I() {
        /*
        // Method dump skipped, instructions count: 492
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0454Dz.A0I():void");
    }

    private void A0J() {
        long A0D2;
        if (this.A0K.A0Q()) {
            AG A0H2 = this.A0K.A0H();
            long ACo = A0H2.A08.ACo();
            if (ACo != -9223372036854775807L) {
                A0Q(ACo);
                if (ACo != this.A05.A0A) {
                    AK ak = this.A05;
                    this.A05 = ak.A04(ak.A04, ACo, this.A05.A01);
                    this.A0I.A04(4);
                }
            } else {
                this.A03 = this.A0G.A04();
                long A092 = A0H2.A09(this.A03);
                A0R(this.A05.A0A, A092);
                this.A05.A0A = A092;
            }
            AK ak2 = this.A05;
            if (this.A0C.length == 0) {
                A0D2 = A0H2.A02.A01;
            } else {
                A0D2 = A0H2.A0D(true);
            }
            ak2.A09 = A0D2;
        }
    }

    private void A0M(float f) {
        for (AG A0F2 = this.A0K.A0F(); A0F2 != null; A0F2 = A0F2.A01) {
            if (A0F2.A04 != null) {
                H4[] A022 = A0F2.A04.A01.A02();
                for (H4 trackSelection : A022) {
                    if (trackSelection != null) {
                        trackSelection.AB8(f);
                    }
                }
            }
        }
    }

    private void A0N(int i) {
        this.A02 = i;
        if (!this.A0K.A0S(i)) {
            A0k(true);
        }
    }

    private void A0O(int i) {
        if (this.A05.A00 != i) {
            this.A05 = this.A05.A02(i);
        }
    }

    private void A0P(int i, boolean z, int i2) {
        boolean z2;
        boolean z3;
        AG A0H2 = this.A0K.A0H();
        YH yh = this.A0T[i];
        this.A0C[i2] = yh;
        if (yh.A7F() == 0) {
            AZ az = A0H2.A04.A03[i];
            Format[] A0w = A0w(A0H2.A04.A01.A01(i));
            if (!this.A08 || this.A05.A00 != 3) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z || !z2) {
                z3 = false;
            } else {
                z3 = true;
            }
            yh.A58(az, A0w, A0H2.A0A[i], this.A03, z3, A0H2.A08());
            this.A0G.A09(yh);
            if (z2) {
                yh.start();
            }
        }
    }

    private void A0Q(long j) {
        if (this.A0K.A0Q()) {
            AG A0H2 = this.A0K.A0H();
            if (A0W[4].length() != 29) {
                String[] strArr = A0W;
                strArr[0] = "3Dp2X759xi1gKy2gc8ykMJ";
                strArr[7] = "GcHSrS1OF4oxjH6XmPjhKR";
                j = A0H2.A0A(j);
            } else {
                throw new RuntimeException();
            }
        }
        this.A03 = j;
        this.A0G.A07(this.A03);
        for (YH yh : this.A0C) {
            yh.ADO(this.A03);
        }
    }

    private void A0R(long j, long j2) {
        A7 a7;
        A7 a72;
        if (!this.A0R.isEmpty() && !this.A05.A04.A02()) {
            if (this.A05.A02 == j) {
                j--;
            }
            int i = this.A05.A04.A02;
            int i2 = this.A00;
            if (i2 > 0) {
                a7 = this.A0R.get(i2 - 1);
            } else {
                a7 = null;
            }
            while (a7 != null) {
                if (a7.A00 <= i) {
                    int i3 = a7.A00;
                    if (A0W[3].charAt(0) != 'c') {
                        String[] strArr = A0W;
                        strArr[0] = "ZbbXGQ7fBHqOH9bFx5EieA";
                        strArr[7] = "wqQaVgv9yDX8FIaCovLxd4";
                        if (i3 == i) {
                            if (a7.A01 <= j) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        throw new RuntimeException();
                    }
                }
                this.A00--;
                int i4 = this.A00;
                a7 = i4 > 0 ? this.A0R.get(i4 - 1) : null;
            }
            if (this.A00 < this.A0R.size()) {
                a72 = this.A0R.get(this.A00);
            } else {
                a72 = null;
            }
            while (a72 != null && a72.A02 != null && (a72.A00 < i || (a72.A00 == i && a72.A01 <= j))) {
                this.A00++;
                if (this.A00 < this.A0R.size()) {
                    a72 = this.A0R.get(this.A00);
                } else {
                    a72 = null;
                }
            }
            while (a72 != null && a72.A02 != null && a72.A00 == i && a72.A01 > j && a72.A01 <= j2) {
                A0a(a72.A03);
                if (a72.A03.A0B() || a72.A03.A0D()) {
                    this.A0R.remove(this.A00);
                } else {
                    this.A00++;
                }
                if (this.A00 < this.A0R.size()) {
                    a72 = this.A0R.get(this.A00);
                } else {
                    a72 = null;
                }
            }
        }
    }

    private void A0S(long j, long j2) {
        this.A0Q.AD9(2);
        this.A0Q.ADd(2, j + j2);
    }

    private void A0T(A6 a6) {
        Object playingPeriodUid;
        long j;
        long j2;
        long startPositionUs;
        long j3;
        long j4;
        if (a6.A01 == this.A07) {
            AbstractC0373Af af = this.A05.A03;
            AbstractC0373Af af2 = a6.A00;
            Object manifest = a6.A02;
            this.A0K.A0O(af2);
            this.A05 = this.A05.A03(af2, manifest);
            A0F();
            int i = this.A01;
            if (i > 0) {
                this.A0I.A03(i);
                this.A01 = 0;
                A9 a9 = this.A04;
                if (a9 != null) {
                    Pair<Integer, Long> A042 = A04(a9, true);
                    this.A04 = null;
                    if (A042 == null) {
                        A08();
                        return;
                    }
                    int intValue = ((Integer) A042.first).intValue();
                    long longValue = ((Long) A042.second).longValue();
                    FC A0M2 = this.A0K.A0M(intValue, longValue);
                    AK ak = this.A05;
                    if (A0M2.A02()) {
                        j4 = 0;
                    } else {
                        j4 = longValue;
                    }
                    this.A05 = ak.A04(A0M2, j4, longValue);
                } else if (this.A05.A02 == -9223372036854775807L) {
                    boolean A0F2 = af2.A0F();
                    String[] strArr = A0W;
                    if (strArr[1].charAt(27) != strArr[2].charAt(27)) {
                        A0W[4] = "lH2oXw2RUPBHBuRA0";
                        if (A0F2) {
                            A08();
                            return;
                        }
                        Pair<Integer, Long> A052 = A05(af2, af2.A06(this.A0B), -9223372036854775807L);
                        int intValue2 = ((Integer) A052.first).intValue();
                        long longValue2 = ((Long) A052.second).longValue();
                        FC A0M3 = this.A0K.A0M(intValue2, longValue2);
                        AK ak2 = this.A05;
                        if (A0M3.A02()) {
                            j3 = 0;
                        } else {
                            j3 = longValue2;
                        }
                        this.A05 = ak2.A04(A0M3, j3, longValue2);
                        return;
                    }
                    throw new RuntimeException();
                }
            } else {
                int i2 = this.A05.A04.A02;
                long j5 = this.A05.A01;
                if (!af.A0F()) {
                    AG A0F3 = this.A0K.A0F();
                    if (A0F3 == null) {
                        C0371Ad ad = this.A0L;
                        if (A0W[3].charAt(0) != 'c') {
                            String[] strArr2 = A0W;
                            strArr2[0] = "AIgzGczszMkheYOO0l2WDA";
                            strArr2[7] = "AQm6fITMTu1q9a2hy8bL0W";
                            playingPeriodUid = af.A0B(i2, ad, true).A03;
                        } else {
                            A0W[6] = "kxPd1uECtZJZCmNWUxsBgkB7loYAAl3C";
                            playingPeriodUid = af.A0B(i2, ad, true).A03;
                        }
                    } else {
                        playingPeriodUid = A0F3.A09;
                    }
                    int A053 = af2.A05(playingPeriodUid);
                    if (A053 == -1) {
                        int A012 = A01(i2, af, af2);
                        if (A012 == -1) {
                            A08();
                            return;
                        }
                        Pair<Integer, Long> A054 = A05(af2, af2.A0A(A012, this.A0L).A00, -9223372036854775807L);
                        int intValue3 = ((Integer) A054.first).intValue();
                        long longValue3 = ((Long) A054.second).longValue();
                        FC A0M4 = this.A0K.A0M(intValue3, longValue3);
                        af2.A0B(intValue3, this.A0L, true);
                        if (A0F3 != null) {
                            Object obj = this.A0L.A03;
                            A0F3.A02 = A0F3.A02.A00(-1);
                            while (A0F3.A01 != null) {
                                A0F3 = A0F3.A01;
                                if (A0F3.A09.equals(obj)) {
                                    A0F3.A02 = this.A0K.A0K(A0F3.A02, intValue3);
                                } else {
                                    A0F3.A02 = A0F3.A02.A00(-1);
                                }
                            }
                        }
                        if (A0M4.A02()) {
                            j2 = 0;
                        } else {
                            j2 = longValue3;
                        }
                        this.A05 = this.A05.A04(A0M4, A02(A0M4, j2), longValue3);
                        return;
                    }
                    if (A053 != i2) {
                        AK A013 = this.A05.A01(A053);
                        if (A0W[4].length() != 29) {
                            A0W[4] = "bxSLNYRWzgoGTszax8Z4I";
                            this.A05 = A013;
                        } else {
                            throw new RuntimeException();
                        }
                    }
                    FC fc = this.A05.A04;
                    if (fc.A02()) {
                        FC A0M5 = this.A0K.A0M(A053, j5);
                        if (!A0M5.equals(fc)) {
                            if (A0M5.A02()) {
                                j = 0;
                            } else {
                                j = j5;
                            }
                            this.A05 = this.A05.A04(A0M5, A02(A0M5, j), j5);
                            return;
                        }
                    }
                    if (!this.A0K.A0V(fc, this.A03)) {
                        A0k(false);
                    }
                } else if (!af2.A0F()) {
                    FC A0M6 = this.A0K.A0M(i2, j5);
                    AK ak3 = this.A05;
                    if (A0M6.A02()) {
                        startPositionUs = 0;
                    } else {
                        startPositionUs = j5;
                    }
                    this.A05 = ak3.A04(A0M6, startPositionUs, j5);
                }
            }
        }
    }

    /* JADX INFO: Multiple debug info for r10v1 com.facebook.ads.redexgen.X.AG: [D('seekPositionAdjusted' boolean), D('periodIndex' int)] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0113  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012a  */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A0U(com.facebook.ads.redexgen.X.A9 r20) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0454Dz.A0U(com.facebook.ads.redexgen.X.A9):void");
    }

    private void A0W(AG ag) {
        boolean z;
        AG A0H2 = this.A0K.A0H();
        if (A0H2 != null && ag != A0H2) {
            int i = 0;
            boolean[] zArr = new boolean[this.A0T.length];
            int i2 = 0;
            while (true) {
                YH[] yhArr = this.A0T;
                if (i2 >= yhArr.length) {
                    break;
                }
                YH yh = yhArr[i2];
                if (yh.A7F() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
                if (A0H2.A04.A00(i2)) {
                    i++;
                }
                if (zArr[i2] && (!A0H2.A04.A00(i2) || (yh.A7w() && yh.A7K() == ag.A0A[i2]))) {
                    A0c(yh);
                }
                i2++;
            }
            AK ak = this.A05;
            if (A0W[6].charAt(23) != 'j') {
                String[] strArr = A0W;
                strArr[0] = "YeyTuc4hJN2cviDoFTSuVw";
                strArr[7] = "y3cCzPpceybwtUTWhAu8hu";
                this.A05 = ak.A05(A0H2.A03, A0H2.A04);
                A0q(zArr, i);
                return;
            }
            throw new RuntimeException();
        }
    }

    private void A0X(AL al) {
        this.A0G.ADq(al);
    }

    /* access modifiers changed from: public */
    private void A0Y(AW aw) {
        if (!aw.A0D()) {
            try {
                aw.A04().A7Y(aw.A00(), aw.A09());
            } finally {
                aw.A0A(true);
            }
        }
    }

    private void A0Z(AW aw) {
        if (aw.A02() == -9223372036854775807L) {
            A0a(aw);
        } else if (this.A07 == null || this.A01 > 0) {
            this.A0R.add(new A7(aw));
        } else {
            A7 a7 = new A7(aw);
            if (A0s(a7)) {
                ArrayList<A7> arrayList = this.A0R;
                String[] strArr = A0W;
                if (strArr[0].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A0W[6] = "bdowkwDe22b4JBVUMCxt2Emm6YTTpUJh";
                arrayList.add(a7);
                Collections.sort(this.A0R);
                return;
            }
            aw.A0A(false);
        }
    }

    private void A0a(AW aw) {
        if (aw.A03().getLooper() == this.A0Q.A6j()) {
            A0Y(aw);
            if (this.A05.A00 == 3 || this.A05.A00 == 2) {
                this.A0Q.ADc(2);
                return;
            }
            return;
        }
        this.A0Q.A9C(15, aw).sendToTarget();
    }

    private void A0b(AW aw) {
        aw.A03().post(new A5(this, aw));
    }

    private void A0c(YH yh) {
        this.A0G.A08(yh);
        A0d(yh);
        yh.A4m();
    }

    private void A0d(YH yh) {
        if (yh.A7F() == 2) {
            yh.stop();
        }
    }

    private void A0e(C0370Ab ab) {
        this.A06 = ab;
    }

    private void A0f(AbstractC1039aW aWVar) {
        if (this.A0K.A0U(aWVar)) {
            this.A0K.A0N(this.A03);
            A09();
        }
    }

    private void A0g(AbstractC1039aW aWVar) {
        if (this.A0K.A0U(aWVar)) {
            AG A0G2 = this.A0K.A0G();
            A0G2.A0F(this.A0G.A70().A01);
            A0j(A0G2.A03, A0G2.A04);
            if (!this.A0K.A0Q()) {
                A0Q(this.A0K.A0D().A02.A03);
                A0W(null);
            }
            A09();
        }
    }

    /* access modifiers changed from: public */
    /* access modifiers changed from: private */
    /* renamed from: A0h */
    public final void A9p(AbstractC1039aW aWVar) {
        this.A0Q.A9C(10, aWVar).sendToTarget();
    }

    private void A0i(FE fe, boolean z, boolean z2) {
        this.A01++;
        A0p(true, z, z2);
        this.A0J.onPrepared();
        this.A07 = fe;
        A0O(2);
        fe.ACY(this.A0H, true, this);
        this.A0Q.ADc(2);
    }

    private void A0j(TrackGroupArray trackGroupArray, H8 h8) {
        this.A0J.ABq(this.A0T, trackGroupArray, h8.A01);
    }

    private void A0k(boolean z) {
        FC fc = this.A0K.A0H().A02.A04;
        long A032 = A03(fc, this.A05.A0A, true);
        if (A032 != this.A05.A0A) {
            AK ak = this.A05;
            this.A05 = ak.A04(fc, A032, ak.A01);
            if (z) {
                this.A0I.A04(4);
            }
        }
    }

    private void A0l(boolean z) {
        if (this.A05.A08 != z) {
            this.A05 = this.A05.A06(z);
        }
    }

    private void A0m(boolean z) {
        this.A09 = false;
        this.A08 = z;
        if (!z) {
            A0H();
            A0J();
        } else if (this.A05.A00 == 3) {
            A0G();
            if (A0W[4].length() != 29) {
                A0W[6] = "X2QfJ1e23pCpGilE5nvaFXYxLnWx3Vax";
                this.A0Q.ADc(2);
                return;
            }
            throw new RuntimeException();
        } else if (this.A05.A00 == 2) {
            this.A0Q.ADc(2);
        }
    }

    private void A0n(boolean z) {
        this.A0B = z;
        if (!this.A0K.A0W(z)) {
            A0k(true);
        }
    }

    private void A0o(boolean z, boolean z2) {
        A0p(true, z, z);
        this.A0I.A03(this.A01 + (z2 ? 1 : 0));
        this.A01 = 0;
        this.A0J.ABj();
        A0O(1);
    }

    private void A0p(boolean z, boolean z2, boolean z3) {
        AbstractC0373Af af;
        FC fc;
        TrackGroupArray trackGroupArray;
        H8 h8;
        FE fe;
        this.A0Q.AD9(2);
        this.A09 = false;
        this.A0G.A06();
        this.A03 = 0;
        for (YH renderer : this.A0C) {
            try {
                A0c(renderer);
            } catch (A0 | RuntimeException e) {
                Log.e(A06(0, 21, 15), A06(138, 12, 123), e);
            }
        }
        this.A0C = new YH[0];
        AI ai = this.A0K;
        String[] strArr = A0W;
        if (strArr[1].charAt(27) != strArr[2].charAt(27)) {
            String[] strArr2 = A0W;
            strArr2[0] = "2WNzaDjkqcOaPFAy0QOPwI";
            strArr2[7] = "unAKX8spYNQMyMddShLfR5";
            ai.A0P(!z2);
            A0l(false);
            if (z2) {
                this.A04 = null;
            }
            if (z3) {
                this.A0K.A0O(AbstractC0373Af.A01);
                Iterator<A7> it = this.A0R.iterator();
                while (it.hasNext()) {
                    A7 next = it.next();
                    if (A0W[5].length() != 18) {
                        throw new RuntimeException();
                    }
                    A0W[6] = "oYGfQB8mGDj6jmVX6XAe4nZE0DoRm7Og";
                    next.A03.A0A(false);
                }
                this.A0R.clear();
                this.A00 = 0;
            }
            if (z3) {
                af = AbstractC0373Af.A01;
            } else {
                af = this.A05.A03;
            }
            Object obj = z3 ? null : this.A05.A07;
            if (z2) {
                fc = new FC(A00());
            } else {
                fc = this.A05.A04;
            }
            long j = -9223372036854775807L;
            long j2 = z2 ? -9223372036854775807L : this.A05.A0A;
            if (!z2) {
                j = this.A05.A01;
            }
            int i = this.A05.A00;
            if (z3) {
                trackGroupArray = TrackGroupArray.A04;
            } else {
                AK ak = this.A05;
                if (A0W[5].length() != 18) {
                    trackGroupArray = ak.A05;
                } else {
                    String[] strArr3 = A0W;
                    strArr3[1] = "udHBd6VluCWpjwypGpbQkm44C5lEXr7W";
                    strArr3[2] = "ikIjUWR3chEMULYYaopllYxVSgtPleKx";
                    trackGroupArray = ak.A05;
                }
            }
            if (z3) {
                h8 = this.A0O;
            } else {
                h8 = this.A05.A06;
            }
            this.A05 = new AK(af, obj, fc, j2, j, i, false, trackGroupArray, h8);
            if (z && (fe = this.A07) != null) {
                fe.AD6(this);
                this.A07 = null;
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0q(boolean[] zArr, int i) {
        this.A0C = new YH[i];
        int enabledRendererCount = 0;
        AG A0H2 = this.A0K.A0H();
        for (int i2 = 0; i2 < this.A0T.length; i2++) {
            if (A0H2.A04.A00(i2)) {
                A0P(i2, zArr[i2], enabledRendererCount);
                enabledRendererCount++;
            }
        }
    }

    private boolean A0r() {
        AG A0H2 = this.A0K.A0H();
        long j = A0H2.A02.A01;
        if (j == -9223372036854775807L || this.A05.A0A < j || (A0H2.A01 != null && (A0H2.A01.A06 || A0H2.A01.A02.A04.A02()))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.Dz: [D('periodPosition' android.util.Pair<java.lang.Integer, java.lang.Long>), D('index' int)] */
    private boolean A0s(A7 a7) {
        if (a7.A02 == null) {
            Pair<Integer, Long> A042 = A04(new A9(a7.A03.A08(), a7.A03.A01(), C03639u.A00(a7.A03.A02())), false);
            if (A042 == null) {
                return false;
            }
            a7.A01(((Integer) A042.first).intValue(), ((Long) A042.second).longValue(), this.A05.A03.A0B(((Integer) A042.first).intValue(), this.A0L, true).A03);
        } else {
            int A052 = this.A05.A03.A05(a7.A02);
            if (A052 == -1) {
                return false;
            }
            a7.A00 = A052;
        }
        return true;
    }

    private boolean A0t(YH yh) {
        AG A0I2 = this.A0K.A0I();
        if (A0I2.A01 == null || !A0I2.A01.A06 || !yh.A7c()) {
            return false;
        }
        return true;
    }

    private boolean A0u(FC fc, long j, AG ag) {
        if (!fc.equals(ag.A02.A04) || !ag.A06) {
            return false;
        }
        this.A05.A03.A0A(ag.A02.A04.A02, this.A0L);
        int A042 = this.A0L.A04(j);
        if (A042 == -1 || this.A0L.A09(A042) == ag.A02.A02) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0068, code lost:
        if (r3 != Long.MIN_VALUE) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x009e, code lost:
        if (r3 != Long.MIN_VALUE) goto L_0x006a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean A0v(boolean r8) {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0454Dz.A0v(boolean):boolean");
    }

    public static Format[] A0w(H4 h4) {
        int i;
        if (h4 != null) {
            i = h4.length();
        } else {
            i = 0;
        }
        Format[] formatArr = new Format[i];
        for (int i2 = 0; i2 < i; i2++) {
            formatArr[i2] = h4.A6X(i2);
            if (A0W[3].charAt(0) != 'c') {
                String[] strArr = A0W;
                strArr[1] = "cHoAaTwhCyKnC5gIlgOheFkD17ImOLE4";
                strArr[2] = "NdVO49IoL7wvUQC4on3mokgCd3AJvc50";
            } else {
                throw new RuntimeException();
            }
        }
        return formatArr;
    }

    public final Looper A0x() {
        return this.A0F.getLooper();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002e, code lost:
        if (com.facebook.ads.redexgen.X.C0454Dz.A0W[3].charAt(0) == 'c') goto L_0x0038;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0030, code lost:
        com.facebook.ads.redexgen.X.C0454Dz.A0W[5] = "ci8xVCbgf6WZorAiSg";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0037, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003d, code lost:
        throw new java.lang.RuntimeException();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void A0y() {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.A0A     // Catch:{ all -> 0x003e }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r3)
            return
        L_0x0007:
            com.facebook.ads.redexgen.X.IA r1 = r3.A0Q
            r0 = 7
            r1.ADc(r0)
            r1 = 0
        L_0x000e:
            boolean r0 = r3.A0A
            if (r0 != 0) goto L_0x0018
            r3.wait()     // Catch:{ InterruptedException -> 0x0016 }
            goto L_0x000e
        L_0x0016:
            r1 = 1
            goto L_0x000e
        L_0x0018:
            if (r1 == 0) goto L_0x0021
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x0021:
            monitor-exit(r3)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C0454Dz.A0W
            r0 = 3
            r1 = r1[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            r0 = 99
            if (r1 == r0) goto L_0x0038
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0454Dz.A0W
            java.lang.String r1 = "ci8xVCbgf6WZorAiSg"
            r0 = 5
            r2[r0] = r1
            return
        L_0x0038:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x003e:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0454Dz.A0y():void");
    }

    public final void A0z(AbstractC0373Af af, int i, long j) {
        this.A0Q.A9C(3, new A9(af, i, j)).sendToTarget();
    }

    public final void A10(FE fe, boolean z, boolean z2) {
        this.A0Q.A9B(0, z ? 1 : 0, z2 ? 1 : 0, fe).sendToTarget();
    }

    public final void A11(boolean z) {
        this.A0Q.A9A(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void A12(boolean z) {
        this.A0Q.A9A(6, z ? 1 : 0, 0).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03669x
    public final void AB7(AL al) {
        this.A0E.obtainMessage(1, al).sendToTarget();
        A0M(al.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1038aV
    public final void ABF(AbstractC1039aW aWVar) {
        this.A0Q.A9C(9, aWVar).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.FD
    public final void ABe(FE fe, AbstractC0373Af af, Object obj) {
        this.A0Q.A9C(8, new A6(fe, af, obj)).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.AU
    public final synchronized void ADe(AW aw) {
        if (this.A0A) {
            Log.w(A06(0, 21, 15), A06(50, 37, 50));
            aw.A0A(false);
            return;
        }
        this.A0Q.A9C(14, aw).sendToTarget();
    }

    public final boolean handleMessage(Message message) {
        String A062 = A06(0, 21, 15);
        try {
            switch (message.what) {
                case 0:
                    A0i((FE) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    A0m(message.arg1 != 0);
                    break;
                case 2:
                    A07();
                    break;
                case 3:
                    A0U((A9) message.obj);
                    break;
                case 4:
                    A0X((AL) message.obj);
                    break;
                case 5:
                    A0e((C0370Ab) message.obj);
                    break;
                case 6:
                    A0o(message.arg1 != 0, true);
                    break;
                case 7:
                    A0D();
                    return true;
                case 8:
                    A0T((A6) message.obj);
                    break;
                case 9:
                    A0g((AbstractC1039aW) message.obj);
                    break;
                case 10:
                    A0f((AbstractC1039aW) message.obj);
                    break;
                case 11:
                    A0E();
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    A0N(message.arg1);
                    break;
                case 13:
                    A0n(message.arg1 != 0);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    A0Z((AW) message.obj);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    A0b((AW) message.obj);
                    break;
                default:
                    return false;
            }
            A0A();
        } catch (A0 e) {
            Log.e(A062, A06(FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, 15, 0), e);
            A0o(false, false);
            this.A0E.obtainMessage(2, e).sendToTarget();
            A0A();
        } catch (IOException e2) {
            Log.e(A062, A06(125, 13, 87), e2);
            A0o(false, false);
            this.A0E.obtainMessage(2, A0.A00(e2)).sendToTarget();
            A0A();
        } catch (RuntimeException e3) {
            Log.e(A062, A06(87, 23, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS), e3);
            A0o(false, false);
            this.A0E.obtainMessage(2, A0.A02(e3)).sendToTarget();
            if (A0W[6].charAt(23) != 'j') {
                A0W[5] = "BLVAUEtDSJNWXrvjpr";
                A0A();
            } else {
                throw new RuntimeException();
            }
        }
        return true;
    }
}
