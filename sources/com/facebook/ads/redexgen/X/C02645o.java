package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5o  reason: invalid class name and case insensitive filesystem */
public final class C02645o {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06 = C02645o.class.getSimpleName();
    public final C02655p A00;
    public final C02665q A01;
    public final XK A02;
    public final AbstractC0762Qj A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{46, 56, 19, 41, 52, 56, 62, 45, 63};
    }

    static {
        A01();
    }

    public C02645o(XK xk, AbstractC0774Qv qv, C02655p r5, C02665q r6) {
        this.A02 = xk;
        this.A03 = qv.A4O(EnumC0763Qk.A06);
        this.A00 = r5;
        this.A01 = r6;
        this.A03.A3J(new U0(this));
        A02();
    }

    /* JADX INFO: Multiple debug info for r5v0 'this'  com.facebook.ads.redexgen.X.5o: [D('this' com.facebook.ads.redexgen.X.5o), D('btExtras' java.lang.String)] */
    /* access modifiers changed from: private */
    public synchronized void A02() {
        if (!KT.A02(this)) {
            try {
                if (!this.A03.A89()) {
                    BuildConfigApi.isDebug();
                    return;
                }
                String optString = this.A03.A6B().optString(A00(0, 9, 62));
                if (!TextUtils.isEmpty(optString)) {
                    this.A00.A04(this.A02, optString);
                    if (!A04 || J4.A0g(this.A02)) {
                        A04 = true;
                        this.A01.A06();
                    }
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
