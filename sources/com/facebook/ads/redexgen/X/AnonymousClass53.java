package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.AudienceNetworkAdsApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;

/* renamed from: com.facebook.ads.redexgen.X.53  reason: invalid class name */
public final class AnonymousClass53 implements AudienceNetworkAdsApi {
    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final int getAdFormatForPlacement(String str) {
        return KT.A02(this) ? 0 : 0;
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final void initialize(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener) {
        if (!KT.A02(this)) {
            if (initListener == null) {
                try {
                    initListener = new AnonymousClass52(this);
                } catch (Throwable th) {
                    KT.A00(th, this);
                    return;
                }
            }
            DynamicLoaderFactory.makeLoader(context).getInitApi().initialize(context, multithreadedBundleWrapper, initListener, 1);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final boolean isInitialized() {
        if (KT.A02(this)) {
            return false;
        }
        try {
            DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
            if (dynamicLoader == null) {
                return false;
            }
            return dynamicLoader.getInitApi().isInitialized();
        } catch (Throwable th) {
            KT.A00(th, this);
            return false;
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkAdsApi
    public final void onContentProviderCreated(Context context) {
        if (!KT.A02(this)) {
            try {
                DynamicLoaderFactory.makeLoader(context).getInitApi().onContentProviderCreated(context);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
