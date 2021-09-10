package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wg  reason: case insensitive filesystem */
public class C0912Wg implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"xn6Y4xiAj5nTE1ZX0fcI9", "IuzZJNTC9Fpz", "Zp9uFgGuFlryeSNHyo4T0p", "eRJH2gjtevDtLFu1wMxFEv", "pTKacr9NdWTXHSX", "3c0ViuxMUKEAC", "2WDSEnCYP4spNEJs", "S3q5Kz3J"};
    }

    public C0912Wg(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 26) {
            C0922Wq wq = this.A00;
            String[] strArr = A01;
            if (strArr[2].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "x95Rh7kgyGSfBF3YHwpGzi";
            strArr2[3] = "73CHLU13D6YvD39ECjSAyL";
            return wq.A08(EnumC02916p.A05);
        } else if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        } else {
            C0922Wq wq2 = this.A00;
            return wq2.A0G(wq2.A00.isDataEnabled());
        }
    }
}
