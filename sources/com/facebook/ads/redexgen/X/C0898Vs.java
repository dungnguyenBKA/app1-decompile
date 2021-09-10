package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Vs  reason: case insensitive filesystem */
public class C0898Vs implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0900Vu A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"wdcki9TayB0epgOAqgPZ60vGLzXQskFg", "eaUsA8pmkvwqM9uF8kH4nQuKK9Zu7ymc", "2dfJX", "k6tMd5tlxlmCEJMQTJf7pwLJqfV91j3Q", "YVwPmyUK2b9QSHLRAwsi84oHRZQXtzOF", "hpSXL0XJUd77PKoaf1", "iaFmBfogLFf9YiLH80pKK2KW3oFuZo4T", "28ANuaZ3OB7zLgtTtX"};
    }

    public C0898Vs(C0900Vu vu) {
        this.A00 = vu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 16) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A00 == null) {
            C0900Vu vu = this.A00;
            String[] strArr = A01;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[0] = "xEd7j65KlJaDHlrOXF5qOqVEOzAiF9i5";
            return vu.A08(EnumC02916p.A07);
        }
        C0900Vu vu2 = this.A00;
        return vu2.A0G(vu2.A00.isKeyguardLocked());
    }
}
