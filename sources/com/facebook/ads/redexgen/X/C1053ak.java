package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* renamed from: com.facebook.ads.redexgen.X.ak  reason: case insensitive filesystem */
public class C1053ak extends QD {
    public static String[] A01;
    public final /* synthetic */ C1050ah A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"r1Qo3G0acQP9G90IdvhAo3HFTjZ5SydI", "qm3gC", "TCmhR", "E4ahW0CjAiop2M7AIgY7y1ZiLbUQe2fx", "mXvvs7C7wolmR3EIOyKvx9drm4P6eOOG", "CTdCniPubZN", "25pQI77d72Gk7OiKaUDbOu8B", "A528XA3JCpwqqjTqo7CqKKSxgmd"};
    }

    public C1053ak(C1050ah ahVar) {
        this.A00 = ahVar;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A00.A0W.A08()) {
            if (!(this.A00.A0I)) {
                this.A00.A0I();
            }
            if (!TextUtils.isEmpty(this.A00.A0Q.A0T())) {
                if (this.A00.A0I) {
                    C1050ah ahVar = this.A00;
                    if (A01[6].length() != 0) {
                        String[] strArr = A01;
                        strArr[5] = "JKAv6PElY7i";
                        strArr[7] = "iAODJPr03xOiPaEllQg3AbvYwen";
                        ahVar.A0I();
                    } else {
                        throw new RuntimeException();
                    }
                }
                this.A00.A0T.A8a(this.A00.A0Q.A0T(), new C0678Nc().A04(this.A00.A0g).A03(this.A00.A0W).A05(this.A00.A0Q.A0W()).A06());
                this.A00.A0S.A0A().A2a();
                AnonymousClass24.A00(this.A00.A0Q.A0V());
            }
        }
    }
}
