package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: com.facebook.ads.redexgen.X.0d  reason: invalid class name and case insensitive filesystem */
public class C01250d extends AnonymousClass2E {
    @Override // com.facebook.ads.redexgen.X.C01982y, com.facebook.ads.redexgen.X.C0478Ez
    public final void A0D(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.C01982y
    public final boolean A0J(View view) {
        return view.isAttachedToWindow();
    }
}
