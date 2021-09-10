package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.3U  reason: invalid class name */
public class AnonymousClass3U extends AccessibilityNodeProvider {
    public final /* synthetic */ AnonymousClass3V A00;

    public AnonymousClass3U(AnonymousClass3V r1) {
        this.A00 = r1;
    }

    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        return (AccessibilityNodeInfo) this.A00.A4D(i);
    }

    /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: java.util.List<java.lang.Object>, java.util.List<android.view.accessibility.AccessibilityNodeInfo> */
    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
        return this.A00.A5K(str, i);
    }

    public final AccessibilityNodeInfo findFocus(int i) {
        return (AccessibilityNodeInfo) this.A00.A5L(i);
    }

    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.A00.ACO(i, i2, bundle);
    }
}
