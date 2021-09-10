package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.Ez  reason: case insensitive filesystem */
public class C0478Ez extends C0824Su {
    @Override // com.facebook.ads.redexgen.X.C01982y
    public final int A04(View view) {
        return view.getImportantForAccessibility();
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final int A06(View view) {
        return view.getMinimumHeight();
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final int A07(View view) {
        return view.getMinimumWidth();
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final void A0B(View view) {
        view.postInvalidateOnAnimation();
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public void A0D(View view, int i) {
        if (i == 4) {
            i = 2;
        }
        view.setImportantForAccessibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final void A0G(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final void A0H(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final boolean A0I(View view) {
        return view.hasTransientState();
    }
}
