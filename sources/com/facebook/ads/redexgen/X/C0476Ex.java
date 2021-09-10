package com.facebook.ads.redexgen.X;

import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: com.facebook.ads.redexgen.X.Ex  reason: case insensitive filesystem */
public class C0476Ex extends T0 {
    @Override // com.facebook.ads.redexgen.X.AnonymousClass3H
    public final int A00(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3H
    public final void A01(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(i);
    }
}
