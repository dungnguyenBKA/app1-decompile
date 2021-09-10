package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.aJ  reason: case insensitive filesystem */
public final class C1026aJ implements FZ {
    public static String[] A03;
    public boolean A00;
    public final FZ A01;
    public final /* synthetic */ C8 A02;

    static {
        A00();
    }

    public static void A00() {
        A03 = new String[]{"Y0RqBQKF49030hyQzszDurtmlsUicf4U", "tAeRat44Mts19", "EPGGJhXl7bdoeZDT1hnWH0ijeyZXJvPV", "NBArrZMeyPwcwZbguPm4zDdVfStRBHKE", "9Syc9rzKlnhB1gjxfWOFcJRGeL88RA9A", "zPpMUsK8OtHy3XCHJzxzsSjo5boBV7qo", "d", "R"};
    }

    public C1026aJ(C8 c8, FZ fz) {
        this.A02 = c8;
        this.A01 = fz;
    }

    public final void A01() {
        this.A00 = false;
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final boolean A89() {
        return !this.A02.A04() && this.A01.A89();
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final void A8z() throws IOException {
        this.A01.A8z();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0083, code lost:
        if (r7 == Long.MIN_VALUE) goto L_0x0085;
     */
    @Override // com.facebook.ads.redexgen.X.FZ
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int ACn(com.facebook.ads.redexgen.X.AD r12, com.facebook.ads.redexgen.X.YY r13, boolean r14) {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1026aJ.ACn(com.facebook.ads.redexgen.X.AD, com.facebook.ads.redexgen.X.YY, boolean):int");
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final int AE2(long j) {
        if (this.A02.A04()) {
            return -3;
        }
        return this.A01.AE2(j);
    }
}
