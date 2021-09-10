package com.facebook.ads.redexgen.X;

import com.facebook.ads.AudienceNetworkAds;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Xe  reason: case insensitive filesystem */
public class C0936Xe extends AbstractRunnableC0603Kb {
    public static byte[] A02;
    public final /* synthetic */ AudienceNetworkAds.InitListener A00;
    public final /* synthetic */ XK A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{91, 108, 99, 40, 123, 125, 107, 107, 109, 123, 123, 110, 125, 100, 100, 113, 40, 97, 102, 97, 124, 97, 105, 100, 97, 114, 109, 108, 41};
    }

    public C0936Xe(XK xk, AudienceNetworkAds.InitListener initListener) {
        this.A01 = xk;
        this.A00 = initListener;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        try {
            C0950Xs.A02().A0E(this.A01);
        } catch (Throwable th) {
            this.A01.A04().A3T(th);
        }
        AnonymousClass91.A0D(this.A01);
        AudienceNetworkAds.InitListener initListener = this.A00;
        if (initListener != null) {
            AnonymousClass91.A05(initListener, new AnonymousClass90(true, A00(0, 29, 0)));
        }
    }
}
