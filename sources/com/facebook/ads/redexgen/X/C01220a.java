package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.SERVER_ERROR)
/* renamed from: com.facebook.ads.redexgen.X.0a  reason: invalid class name and case insensitive filesystem */
public class C01220a extends C01250d {
    @Override // com.facebook.ads.redexgen.X.C01982y
    public final AnonymousClass3G A09(View view, AnonymousClass3G r4) {
        WindowInsets windowInsets = (WindowInsets) AnonymousClass3G.A01(r4);
        WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (dispatchApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(dispatchApplyWindowInsets);
        }
        return AnonymousClass3G.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final AnonymousClass3G A0A(View view, AnonymousClass3G r4) {
        WindowInsets windowInsets = (WindowInsets) AnonymousClass3G.A01(r4);
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (onApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(onApplyWindowInsets);
        }
        return AnonymousClass3G.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final void A0C(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final void A0F(View view, AbstractC01832j r3) {
        if (r3 == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC01972x(this, r3));
        }
    }
}
