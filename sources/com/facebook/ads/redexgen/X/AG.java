package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import java.util.Arrays;

public final class AG {
    public static byte[] A0F;
    public static String[] A0G;
    public long A00;
    public AG A01;
    public AH A02;
    public TrackGroupArray A03;
    public H8 A04;
    public boolean A05;
    public boolean A06;
    public H8 A07;
    public final AbstractC1039aW A08;
    public final Object A09;
    public final FZ[] A0A;
    public final boolean[] A0B;
    public final FE A0C;
    public final H7 A0D;
    public final AY[] A0E;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 105);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0F = new byte[]{42, 66, 65, 70, 62, 45, 66, 79, 70, 76, 65, 37, 76, 73, 65, 66, 79, 50, 71, 84, 75, 81, 70, 2, 84, 71, 78, 71, 67, 85, 71, 2, 72, 67, 75, 78, 71, 70, 16};
    }

    public static void A02() {
        A0G = new String[]{"veEP335vIU", "oLB3f1kinZ5WOxb9JrKF9bI12rnC7Hj4", "JTOn230cVZ0r3ImY4sjYKOAnliXJWsYG", "qI3jAuZXuqqi9ieUnmB3HYz1RRsZ6ptY", "FV6PRsoISyO05pqLoteca44", "2aqdzlIyDZTOMtMqQXI", "yc78GsDKEqwKVvSYIw58zbgjS6oh7wuT", "vKvp49qN2fZ5TwJRBPfaEcKl4xZFQEWJ"};
    }

    public AG(AY[] ayArr, long j, H7 h7, HA ha, FE fe, Object obj, AH ah) {
        this.A0E = ayArr;
        this.A00 = j - ah.A03;
        this.A0D = h7;
        this.A0C = fe;
        this.A09 = C0551Hx.A01(obj);
        this.A02 = ah;
        this.A0A = new FZ[ayArr.length];
        this.A0B = new boolean[ayArr.length];
        AbstractC1039aW A4Q = fe.A4Q(ah.A04, ha);
        this.A08 = ah.A02 != Long.MIN_VALUE ? new C8(A4Q, true, 0, ah.A02) : A4Q;
    }

    private void A03(H8 h8) {
        int i = 0;
        while (true) {
            int i2 = h8.A00;
            String[] strArr = A0G;
            if (strArr[1].charAt(21) != strArr[6].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[2] = "zTmDI2eB0pskJnfpVdGiT2gSjaG941UO";
            strArr2[3] = "GwIuNKKr0Vh704cWvV3fzSTRpdmwONBr";
            if (i < i2) {
                boolean A002 = h8.A00(i);
                H4 A012 = h8.A01.A01(i);
                if (A002 && A012 != null) {
                    A012.A57();
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void A04(H8 h8) {
        H8 h82 = this.A07;
        this.A07 = h8;
        H8 h83 = this.A07;
        if (h83 != null) {
            A03(h83);
        }
    }

    private void A05(FZ[] fzArr) {
        int i = 0;
        while (true) {
            AY[] ayArr = this.A0E;
            if (i < ayArr.length) {
                if (ayArr[i].A7P() == 5 && this.A04.A00(i)) {
                    fzArr[i] = new C1033aQ();
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void A06(FZ[] fzArr) {
        int i = 0;
        while (true) {
            AY[] ayArr = this.A0E;
            if (i < ayArr.length) {
                if (ayArr[i].A7P() == 5) {
                    fzArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final long A07() {
        if (!this.A06) {
            return 0;
        }
        return this.A08.A6o();
    }

    public final long A08() {
        return this.A00;
    }

    public final long A09(long j) {
        return j - A08();
    }

    public final long A0A(long j) {
        return A08() + j;
    }

    public final long A0B(long j, boolean z) {
        return A0C(j, z, new boolean[this.A0E.length]);
    }

    /* JADX INFO: Multiple debug info for r12v0 'this'  com.facebook.ads.redexgen.X.AG: [D('trackSelections' com.facebook.ads.redexgen.X.H5), D('i' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0085, code lost:
        if (r6 != null) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00a7, code lost:
        if (r6 != null) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ae, code lost:
        if (r4.A01(r5) != null) goto L_0x00b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00b0, code lost:
        r0 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00b1, code lost:
        com.facebook.ads.redexgen.X.C0551Hx.A04(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b5, code lost:
        r0 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long A0C(long r13, boolean r15, boolean[] r16) {
        /*
        // Method dump skipped, instructions count: 184
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AG.A0C(long, boolean, boolean[]):long");
    }

    public final long A0D(boolean z) {
        if (!this.A06) {
            return this.A02.A03;
        }
        long A5m = this.A08.A5m();
        if (A5m != Long.MIN_VALUE || !z) {
            return A5m;
        }
        AH ah = this.A02;
        String[] strArr = A0G;
        if (strArr[1].charAt(21) != strArr[6].charAt(21)) {
            throw new RuntimeException();
        }
        A0G[0] = "Yxep602BeUF0L8l";
        return ah.A01;
    }

    public final void A0E() {
        A04(null);
        try {
            if (this.A02.A02 != Long.MIN_VALUE) {
                this.A0C.AD4(((C8) this.A08).A05);
            } else {
                this.A0C.AD4(this.A08);
            }
        } catch (RuntimeException e) {
            Log.e(A00(0, 17, 116), A00(17, 22, 121), e);
        }
    }

    public final void A0F(float f) throws A0 {
        this.A06 = true;
        this.A03 = this.A08.A7O();
        A0J(f);
        long A0B2 = A0B(this.A02.A03, false);
        this.A00 += this.A02.A03 - A0B2;
        this.A02 = this.A02.A01(A0B2);
    }

    public final void A0G(long j) {
        this.A08.A4B(A09(j));
    }

    public final void A0H(long j) {
        if (this.A06) {
            this.A08.ACv(A09(j));
        }
    }

    public final boolean A0I() {
        if (!this.A06 || (this.A05 && this.A08.A5m() != Long.MIN_VALUE)) {
            return false;
        }
        return true;
    }

    public final boolean A0J(float f) throws A0 {
        H8 A0V = this.A0D.A0V(this.A0E, this.A03);
        if (A0V.A01(this.A07)) {
            return false;
        }
        this.A04 = A0V;
        H4[] A022 = this.A04.A01.A02();
        for (H4 trackSelection : A022) {
            if (trackSelection != null) {
                trackSelection.AB8(f);
            }
        }
        return true;
    }
}
