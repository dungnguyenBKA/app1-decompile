package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Xh  reason: case insensitive filesystem */
public class C0939Xh implements KR {
    @Override // com.facebook.ads.redexgen.X.KR
    public final void ADD(Throwable th, Object obj) {
        if (obj instanceof AnonymousClass8B) {
            XJ A5U = ((AnonymousClass8B) obj).A5U();
            if (A5U != null) {
                A5U.A0E(th);
            }
        } else if (obj instanceof View) {
            Context context = ((View) obj).getContext();
            if (context instanceof XJ) {
                ((XJ) context).A0E(th);
            }
        }
    }
}
