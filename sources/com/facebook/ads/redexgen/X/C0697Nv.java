package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.Nv  reason: case insensitive filesystem */
public final class C0697Nv {
    public static final int A00 = C0632Lh.A00();
    public static final int A01 = AnonymousClass2L.A01(-1, 0);
    public static final int A02 = AnonymousClass2L.A01(-16777216, 115);

    public static void A00(XJ xj, ViewGroup viewGroup, String str) {
        new AsyncTaskC1017aA(viewGroup, xj).A08(str);
        View view = new View(xj);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        C0632Lh.A0W(view, xj);
        viewGroup.addView(view, 0);
    }
}
