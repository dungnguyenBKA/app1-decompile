package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Ug  reason: case insensitive filesystem */
public class C0860Ug implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"9CH7FUr60fjSOu0uDtam6QWrW1LAXcO0", "MGZ5NGAJYsXrcQ530Rpa4mq072uYsiXm", "FSEpTqAJrXrPXD8Cb", "YDmM9nsCETgUfJB46tzDOSpydcNxEQ3F", "VGv8Kw1xSq2totQkDwmbaDQvoJVXTwia", "PqLjk4LqC3tC9ytXEM059nB67sHSnsxP", "xjbenFCMrkBs7EfKqhSnYCZ0lRG62qii", "xgMaaa53aLKiV09tKVXK6rj7dvlbsjte"};
    }

    public C0860Ug(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 24) {
            C0863Uj uj = this.A00;
            EnumC02916p r3 = EnumC02916p.A05;
            String[] strArr = A01;
            if (strArr[4].charAt(20) != strArr[5].charAt(20)) {
                String[] strArr2 = A01;
                strArr2[3] = "fnZh3TS8JAEKtifjP4n7RBztgRvZoar8";
                strArr2[2] = "4XQjD71oxr9tiB6pv";
                return uj.A08(r3);
            }
            throw new RuntimeException();
        } else if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        } else {
            C0863Uj uj2 = this.A00;
            return uj2.A09(uj2.A01.deviceProtectedDataDir);
        }
    }
}
