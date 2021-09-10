package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;

/* renamed from: com.facebook.ads.redexgen.X.56  reason: invalid class name */
public final class AnonymousClass56 {
    public static AnonymousClass0R A00(Context context, AnonymousClass8F r1) {
        AnonymousClass0U A6Y = r1.A6Y(A07(context));
        if (A6Y != null) {
            return A6Y.A8w();
        }
        return new C0782Rd();
    }

    public static XJ A01(Activity activity) {
        return new XJ(activity, A08(), A00(activity, A08()));
    }

    public static XJ A02(Context context) {
        return new XJ(context, A08(), new C0782Rd());
    }

    public static XJ A03(Context context) {
        return new XJ(context, A08(), A00(context, A08()));
    }

    public static XJ A04(Context context) {
        if (J4.A0o(context)) {
            return new XJ(context, A08(), A00(context, A08()));
        }
        return A02(context);
    }

    public static XJ A05(Context context) {
        return new XJ(context, A08(), A00(context, A08()));
    }

    public static ES A06(Context context) {
        return new ES(context, A08(), A08().A6Y(A07(context)));
    }

    public static XK A07(Context context) {
        return new XK(context, A08());
    }

    public static synchronized AnonymousClass8F A08() {
        C0950Xs A02;
        synchronized (AnonymousClass56.class) {
            A02 = C0950Xs.A02();
        }
        return A02;
    }
}
