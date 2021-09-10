package com.facebook.ads.redexgen.X;

import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

@RequiresApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: com.facebook.ads.redexgen.X.2D  reason: invalid class name */
public class AnonymousClass2D extends C02023d {
    @Override // com.facebook.ads.redexgen.X.AnonymousClass3K
    public Object A00(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3K
    public Object A01(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3K
    public final void A03(AccessibilityNodeInfo accessibilityNodeInfo, Object obj) {
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) obj);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass3K
    public final void A04(AccessibilityNodeInfo accessibilityNodeInfo, Object obj) {
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) obj);
    }
}
