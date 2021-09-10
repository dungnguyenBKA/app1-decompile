package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.internal.api.NativeComponentTagApi;

/* renamed from: com.facebook.ads.redexgen.X.5M  reason: invalid class name */
public final class AnonymousClass5M implements NativeComponentTagApi {
    @Override // com.facebook.ads.internal.api.NativeComponentTagApi
    public final void tagView(View view, NativeAdBase.NativeComponentTag nativeComponentTag) {
        if (view != null && nativeComponentTag != null) {
            LF.A03(view, nativeComponentTag);
        }
    }
}
