package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

public class R8 extends QD {
    public static String[] A01;
    public final /* synthetic */ AnonymousClass83 A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"CpCyZvYN17gNmAQ1givZaykBHbBCI0", "baAiIYpH9tIHD9Hq3KBwll8oAmkyQ8xl", "hp5aOEdOqEU6GiXiS60G5d0hHyMpyV1a", "IUgHQDqsqxHz1mzYV3DDezd8Se6QNlb3", "t3r1dh", "acpOTUhFXhF5KXRgHcTwRDquCRAX3B4B", "vBBXWUuvNhVPpjYLTmNeNUi0KYkvu1ac", "0lv69t5ZeKsEoatoiZcazlrJUHKSZnbi"};
    }

    public R8(AnonymousClass83 r1) {
        this.A00 = r1;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A00.A0D.A08()) {
            if (!(((AbstractC1106bb) this.A00).A06)) {
                AnonymousClass83 r1 = this.A00;
                r1.setImpressionRecordingFlag(r1.A0D);
            }
            if (!TextUtils.isEmpty(this.A00.A0A)) {
                AnonymousClass83 r3 = this.A00;
                String[] strArr = A01;
                if (strArr[4].length() != strArr[0].length()) {
                    A01[5] = "qFM5CsrXBvzat0ibNvOjXRfMXPaEXtma";
                    if (((AbstractC1106bb) r3).A06) {
                        AnonymousClass83 r12 = this.A00;
                        r12.setImpressionRecordingFlag(r12.A0D);
                    }
                    ((AbstractC1106bb) this.A00).A0B.A8a(this.A00.A0A, new C0678Nc().A04(this.A00.A09).A03(this.A00.A0D).A05(((AbstractC1106bb) this.A00).A09.A0W()).A06());
                    this.A00.A0C.A0A().A2a();
                    AnonymousClass24.A00(this.A00.A03.A0V());
                    return;
                }
                throw new RuntimeException();
            }
        }
    }
}
