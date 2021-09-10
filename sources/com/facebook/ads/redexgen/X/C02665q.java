package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.api.BidderTokenProviderApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.5q  reason: invalid class name and case insensitive filesystem */
public final class C02665q implements BidderTokenProviderApi {
    public static byte[] A03;
    public static final AtomicBoolean A04 = new AtomicBoolean(false);
    public XK A00;
    public String A01;
    @VisibleForTesting
    public final LJ A02 = new LJ(300000000000L, new U1(this));

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 5);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{-100, -87, -100, -89, -86, -94, 112, 103, 118, 121, 113, 116, 109, -127, 118, 123, 114, 103, 119, 105, 119, 119, 109, 115, 114, -125, 120, 109, 113, 105};
    }

    static {
        A04();
    }

    public static AnonymousClass95 A00(XK xk) {
        if (!J4.A0s(xk)) {
            return AnonymousClass96.A00();
        }
        return AnonymousClass96.A01(A01(0, 6, 86), A01(18, 12, 31), A01(6, 12, 29));
    }

    /* access modifiers changed from: private */
    public void A02() {
        XK xk;
        synchronized (this) {
            xk = this.A00;
        }
        if (xk != null) {
            String A7I = AnonymousClass98.A00().A01(xk, true).A7I(A00(xk));
            synchronized (this) {
                this.A01 = A7I;
            }
        }
    }

    public static void A03() {
        A04.set(true);
    }

    public final void A06() {
        this.A02.A05();
    }

    @Override // com.facebook.ads.internal.api.BidderTokenProviderApi
    public final synchronized String getBidderToken(Context context) {
        this.A00 = AnonymousClass56.A07(context);
        DynamicLoaderFactory.makeLoader(this.A00).getInitApi().maybeAttachCrashListener(this.A00);
        if (C0950Xs.A02().A0C(this.A00).ADw() || ((A04.get() && J4.A1C(this.A00)) || this.A01 == null)) {
            A02();
            this.A02.A04().A03();
            A04.set(false);
        }
        this.A02.A06();
        return this.A01;
    }
}
