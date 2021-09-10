package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAdOptions;
import java.util.Map;

public interface NativeMediationAdRequest extends MediationAdRequest {
    float getAdVolume();

    @Deprecated
    NativeAdOptions getNativeAdOptions();

    com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions();

    boolean isAdMuted();

    boolean isAppInstallAdRequested();

    boolean isContentAdRequested();

    boolean isUnifiedNativeAdRequested();

    boolean zzvl();

    Map<String, Boolean> zzvm();
}
