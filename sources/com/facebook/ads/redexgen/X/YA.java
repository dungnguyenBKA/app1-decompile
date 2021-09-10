package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public final class YA implements AF {
    public static byte[] A0A;
    public static String[] A0B;
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final C1079bA A07;
    public final IQ A08;
    public final boolean A09;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 24);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{104, -85, -87, -74, -74, -73, -68, 104, -86, -83, 104, -76, -83, -69, -69, 104, -68, -80, -87, -74, 104, -81, -88, -69, -84, -84, -85, -72, -116, -75, -72, -106, -78, -89, -65, -88, -89, -87, -79, -121, -84, -70, -85, -72, -104, -85, -88, -69, -84, -84, -85, -72, -109, -71, -54, -35, -50, -50, -51, -38, -82, -41, -38, -72, -44, -55, -31, -54, -55, -53, -45, -75, -37, -17, -29, -6, -60, -9, -24, -24, -25, -12, -49, -11, -23, -27, -22, -66, -15, -30, -30, -31, -18, -55, -17};
    }

    public static void A03() {
        A0B = new String[]{"ilntiKeCpn72Dx7EE3Rw9hkq75JbKAcA", "wPL2yleQwYX6RVVdEOaHMWHZq50QYzDc", "zjYhmAwspMfnQIz92oeL2kf6IR", "AEUyDf5SOKQlymFmwa942o3bdmA", "6YNynFjnDYQOqc0QM1ycbBp5CCdF169p", "D8", "MEXbIoh", "5uze5Gp41PLyaey5Hs3T"};
    }

    public YA() {
        this(new C1079bA(true, 65536));
    }

    @Deprecated
    public YA(C1079bA bAVar) {
        this(bAVar, 15000, 50000, 2500, 5000, -1, true);
    }

    @Deprecated
    public YA(C1079bA bAVar, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(bAVar, i, i2, i3, i4, i5, z, null);
    }

    @Deprecated
    public YA(C1079bA bAVar, int i, int i2, int i3, int i4, int i5, boolean z, IQ iq) {
        String A012 = A01(21, 1, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
        String A013 = A01(54, 19, 80);
        A04(i3, 0, A013, A012);
        String A014 = A01(22, 32, 46);
        A04(i4, 0, A014, A012);
        String A015 = A01(84, 11, 100);
        A04(i, i3, A015, A013);
        A04(i, i4, A015, A014);
        A04(i2, i, A01(73, 11, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), A015);
        this.A07 = bAVar;
        this.A06 = ((long) i) * 1000;
        this.A05 = ((long) i2) * 1000;
        this.A04 = ((long) i3) * 1000;
        this.A03 = ((long) i4) * 1000;
        this.A02 = i5;
        this.A09 = z;
        this.A08 = iq;
    }

    private final int A00(YH[] yhArr, H5 h5) {
        int i = 0;
        for (int i2 = 0; i2 < yhArr.length; i2++) {
            if (h5.A01(i2) != null) {
                i += C0556Ic.A01(yhArr[i2].A7P());
            }
        }
        return i;
    }

    public static void A04(int i, int i2, String str, String str2) {
        boolean z;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A05(z, str + A01(0, 21, 48) + str2);
    }

    private void A05(boolean z) {
        this.A00 = 0;
        IQ iq = this.A08;
        if (iq != null && this.A01) {
            iq.A03(0);
        }
        this.A01 = false;
        if (z) {
            this.A07.A04();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final HA A5a() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final long A5f() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final void ABO() {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final void ABj() {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final void ABq(YH[] yhArr, TrackGroupArray trackGroupArray, H5 h5) {
        int i = this.A02;
        if (i == -1) {
            i = A00(yhArr, h5);
        }
        this.A00 = i;
        this.A07.A05(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final boolean ADP() {
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0061, code lost:
        if (r3 != r4) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0076, code lost:
        if (r3 != r4) goto L_0x0063;
     */
    @Override // com.facebook.ads.redexgen.X.AF
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean ADv(long r9, float r11) {
        /*
        // Method dump skipped, instructions count: 142
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YA.ADv(long, float):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final boolean ADy(long j, float f, boolean z) {
        long j2;
        long A0D = C0556Ic.A0D(j, f);
        if (z) {
            j2 = this.A03;
        } else {
            j2 = this.A04;
        }
        if (A0B[6].length() != 13) {
            A0B[6] = "eSzKm";
            if (j2 <= 0 || A0D >= j2 || (!this.A09 && this.A07.A03() >= this.A00)) {
                return true;
            }
            return false;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AF
    public final void onPrepared() {
        A05(false);
    }
}
