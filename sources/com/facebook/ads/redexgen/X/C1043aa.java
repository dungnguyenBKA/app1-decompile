package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.aa  reason: case insensitive filesystem */
public final class C1043aa extends AbstractC0373Af {
    public static String[] A09;
    public static final Object A0A = new Object();
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    @Nullable
    public final Object A06;
    public final boolean A07;
    public final boolean A08;

    public static void A00() {
        A09 = new String[]{"LiVpibqpJatuLGaZNpcVvLbqNHldnUzA", "bX5xO856XIcJE12GDRsOqh2", "ZVG", "hIvfEeguXT", "OzXlbx4H0xP2XpsF07euT", "fU7LOfxMrEgavyMWFPaWlv5y0089z6Uh", "tbzCzUNP5mUbYRUDq8rztMXXiQr3Ary2", "G8Ws4pPS3koy2aZpOP3X3qbhHPqHsp6i"};
    }

    static {
        A00();
    }

    public C1043aa(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, @Nullable Object obj) {
        this.A01 = j;
        this.A05 = j2;
        this.A00 = j3;
        this.A03 = j4;
        this.A04 = j5;
        this.A02 = j6;
        this.A08 = z;
        this.A07 = z2;
        this.A06 = obj;
    }

    public C1043aa(long j, long j2, long j3, long j4, boolean z, boolean z2, @Nullable Object obj) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj);
    }

    public C1043aa(long j, boolean z, boolean z2, @Nullable Object obj) {
        this(j, j, 0, 0, z, z2, obj);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0373Af
    public final int A01() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0373Af
    public final int A02() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0373Af
    public final int A05(Object obj) {
        return A0A.equals(obj) ? 0 : -1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0373Af
    public final C0371Ad A0B(int i, C0371Ad ad, boolean z) {
        Object obj;
        C0551Hx.A00(i, 0, 1);
        if (z) {
            obj = A0A;
        } else {
            obj = null;
        }
        return ad.A0B(null, obj, 0, this.A00, -this.A04);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0068, code lost:
        if (r13 > r2) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x007e, code lost:
        if (r13 > r2) goto L_0x006a;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC0373Af
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.facebook.ads.redexgen.X.C0372Ae A0E(int r22, com.facebook.ads.redexgen.X.C0372Ae r23, boolean r24, long r25) {
        /*
        // Method dump skipped, instructions count: 137
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1043aa.A0E(int, com.facebook.ads.redexgen.X.Ae, boolean, long):com.facebook.ads.redexgen.X.Ae");
    }
}
