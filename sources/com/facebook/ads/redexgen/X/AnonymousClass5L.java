package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.NativeBannerAdView;
import com.facebook.ads.internal.api.NativeBannerAdViewApi;

/* renamed from: com.facebook.ads.redexgen.X.5L  reason: invalid class name */
public final class AnonymousClass5L implements NativeBannerAdViewApi {
    public static View A00(XJ xj, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1143cD.A0J(nativeBannerAd.getInternalNativeAd()).A1W(EnumC0579Jb.A00(type.getEnumCode()));
        C0466En en = new C0466En();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(xj, en);
        en.A05(xj, nativeBannerAd, (C0578Ja) nativeAdViewAttributes.getInternalAttributes(), nativeAdLayout);
        nativeAdLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (C0632Lh.A01 * ((float) type.getHeight()))));
        return nativeAdLayout;
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdViewApi
    public final View render(Context context, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type) {
        return render(context, nativeBannerAd, type, null);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdViewApi
    @SuppressLint({"CatchGeneralException"})
    public final View render(Context context, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A00(AnonymousClass56.A02(context), nativeBannerAd, type, nativeAdViewAttributes);
        } catch (Throwable th) {
            return MJ.A00(AnonymousClass56.A02(context), th);
        }
    }
}
