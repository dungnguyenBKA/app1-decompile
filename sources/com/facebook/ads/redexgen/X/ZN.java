package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;

public final class ZN implements CG {
    public static byte[] A03;
    public static final CJ A04 = new ZM();
    public CI A00;
    public DC A01;
    public boolean A02;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{95, 120, 112, 117, 124, 125, 57, 109, 118, 57, 125, 124, 109, 124, 107, 116, 112, 119, 124, 57, 123, 112, 109, 106, 109, 107, 124, 120, 116, 57, 109, 96, 105, 124};
    }

    static {
        A02();
    }

    public static IM A00(IM im) {
        im.A0Z(0);
        return im;
    }

    private boolean A03(CH ch) throws IOException, InterruptedException {
        D8 d8 = new D8();
        if (!d8.A04(ch, true) || (d8.A04 & 2) != 2) {
            return false;
        }
        int length = Math.min(d8.A00, 8);
        IM im = new IM(length);
        ch.ACM(im.A00, 0, length);
        if (ZL.A05(A00(im))) {
            this.A01 = new ZL();
        } else if (ZQ.A07(A00(im))) {
            this.A01 = new ZQ();
        } else if (!ZO.A05(A00(im))) {
            return false;
        } else {
            this.A01 = new ZO();
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        if (this.A01 == null) {
            if (A03(ch)) {
                ch.ADN();
            } else {
                throw new AJ(A01(0, 34, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
            }
        }
        if (!this.A02) {
            CS AEM = this.A00.AEM(0, 1);
            this.A00.A5B();
            this.A01.A07(this.A00, AEM);
            this.A02 = true;
        }
        return this.A01.A03(ch, cn2);
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        DC dc = this.A01;
        if (dc != null) {
            dc.A06(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        try {
            return A03(ch);
        } catch (AJ unused) {
            return false;
        }
    }
}
