package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wp  reason: case insensitive filesystem */
public class C0921Wp implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Vh7d3JLClPU6O6M8cwd6Jw", "qoTOEE24iOX0Q2iJnmkuihyFZ58dtUeG", "nAWEC03NDSwq9NkCe2EWt", "lKLCTUg5DoQjO8iCafmP2M1qyzkHzRyN", "zIUGSnqgNQBLElYl1akNx9HRDEYjixyz", "g15BZq0dmNsNcXFZVGLSC", "388jVMFAtK4Tm3JKA9SjxAcbz1TvPoye", "A1Sv5qAzVDWgkr4HaP1"};
    }

    public C0921Wp(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 28) {
            return this.A00.A08(EnumC02916p.A05);
        }
        C0922Wq wq = this.A00;
        String[] strArr = A01;
        if (strArr[4].charAt(18) != strArr[1].charAt(18)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[6] = "bZz0x6nk4wqsfLm60KBH7nDut9sP39y5";
        strArr2[3] = "KyjNNUgB1DvvpLcjDLXdCxQbayCmxayp";
        if (wq.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0922Wq wq2 = this.A00;
        return wq2.A05(wq2.A00.getSimCarrierId());
    }
}
