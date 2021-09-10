package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.InitApi;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;

/* renamed from: com.facebook.ads.redexgen.X.57  reason: invalid class name */
public final class AnonymousClass57 implements InitApi {
    @Override // com.facebook.ads.internal.api.InitApi
    public final void initialize(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
        AnonymousClass91.A0G(AnonymousClass56.A07(context), multithreadedBundleWrapper, initListener, i);
    }

    @Override // com.facebook.ads.internal.api.InitApi
    public final boolean isInitialized() {
        return AnonymousClass91.A0I();
    }

    @Override // com.facebook.ads.internal.api.InitApi
    public final void maybeAttachCrashListener(Context context) {
        AnonymousClass91.A07(AnonymousClass56.A07(context));
    }

    @Override // com.facebook.ads.internal.api.InitApi
    public final void onAdEventManagerCreated(Context context) {
        AnonymousClass91.A08(AnonymousClass56.A07(context));
    }

    @Override // com.facebook.ads.internal.api.InitApi
    public final void onAdLoadInvoked(Context context) {
        AnonymousClass91.A09(AnonymousClass56.A07(context));
    }

    @Override // com.facebook.ads.internal.api.InitApi
    public final void onContentProviderCreated(Context context) {
        AnonymousClass91.A0A(AnonymousClass56.A07(context));
    }
}
