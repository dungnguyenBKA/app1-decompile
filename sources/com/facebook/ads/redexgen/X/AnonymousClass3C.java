package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Comparator;

/* renamed from: com.facebook.ads.redexgen.X.3C  reason: invalid class name */
public class AnonymousClass3C implements Comparator<View> {
    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compare(View view, View view2) {
        AnonymousClass36 r3 = (AnonymousClass36) view.getLayoutParams();
        AnonymousClass36 r2 = (AnonymousClass36) view2.getLayoutParams();
        if (r3.A05 != r2.A05) {
            return r3.A05 ? 1 : -1;
        }
        return r3.A02 - r2.A02;
    }
}
