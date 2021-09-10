package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.ads.zzzn;
import com.google.android.gms.internal.ads.zzzv;

public class MobileAds {
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    @Deprecated
    public static final class Settings {
        public Settings() {
            new zzzv();
        }

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }
    }

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(Context context) {
        zzzn.zzrs().disableMediationAdapterInitialization(context);
    }

    public static InitializationStatus getInitializationStatus() {
        return zzzn.zzrs().getInitializationStatus();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzzn.zzrs().getRequestConfiguration();
    }

    @Deprecated
    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzzn.zzrs().getRewardedVideoAdInstance(context);
    }

    public static String getVersionString() {
        return zzzn.zzrs().getVersionString();
    }

    @Deprecated
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    public static void openDebugMenu(Context context, String str) {
        zzzn.zzrs().openDebugMenu(context, str);
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        zzzn.zzrs().registerRtbAdapter(cls);
    }

    public static void setAppMuted(boolean z) {
        zzzn.zzrs().setAppMuted(z);
    }

    public static void setAppVolume(float f) {
        zzzn.zzrs().setAppVolume(f);
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        zzzn.zzrs().setRequestConfiguration(requestConfiguration);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzzn.zzrs().zza(context, str, null);
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzzn.zzrs().zza(context, null, onInitializationCompleteListener);
    }
}
