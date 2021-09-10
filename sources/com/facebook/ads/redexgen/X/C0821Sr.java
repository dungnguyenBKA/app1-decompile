package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.Sr  reason: case insensitive filesystem */
public class C0821Sr extends C01762c {
    @Override // com.facebook.ads.redexgen.X.C01762c
    public final View.AccessibilityDelegate A00(C01772d r2) {
        return new C01742a(this, r2);
    }

    @Override // com.facebook.ads.redexgen.X.C01762c
    public final AnonymousClass3Q A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new AnonymousClass3Q(accessibilityNodeProvider);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C01762c
    public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
        return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
    }
}
