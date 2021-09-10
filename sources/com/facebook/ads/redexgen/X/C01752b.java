package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* renamed from: com.facebook.ads.redexgen.X.2b  reason: invalid class name and case insensitive filesystem */
public class C01752b extends View.AccessibilityDelegate {
    public final /* synthetic */ C01762c A00;
    public final /* synthetic */ C01772d A01;

    public C01752b(C01762c r1, C01772d r2) {
        this.A00 = r1;
        this.A01 = r2;
    }

    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.A01.A05(view, accessibilityEvent);
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.A01.A07(view, accessibilityEvent);
    }

    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        this.A01.A08(view, AnonymousClass3O.A01(accessibilityNodeInfo));
    }

    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.A01.A03(view, accessibilityEvent);
    }

    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.A01.A06(viewGroup, view, accessibilityEvent);
    }

    public final void sendAccessibilityEvent(View view, int i) {
        this.A01.A02(view, i);
    }

    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.A01.A04(view, accessibilityEvent);
    }
}
