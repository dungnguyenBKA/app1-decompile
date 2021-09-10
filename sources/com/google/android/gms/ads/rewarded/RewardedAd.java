package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzawb;

public class RewardedAd {
    private zzawb zzhsd = null;

    @Deprecated
    public RewardedAd(Context context, String str) {
        n.i(context, "context cannot be null");
        n.i(str, "adUnitID cannot be null");
        this.zzhsd = new zzawb(context, str);
    }

    public static void load(Context context, String str, AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        n.i(context, "Context cannot be null.");
        n.i(str, "AdUnitId cannot be null.");
        n.i(adRequest, "AdRequest cannot be null.");
        n.i(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new zzawb(context, str).zza(adRequest.zzds(), rewardedAdLoadCallback);
    }

    public Bundle getAdMetadata() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.getAdMetadata();
        }
        return new Bundle();
    }

    public String getAdUnitId() {
        zzawb zzawb = this.zzhsd;
        return zzawb != null ? zzawb.getAdUnitId() : "";
    }

    public FullScreenContentCallback getFullScreenContentCallback() {
        zzawb zzawb = this.zzhsd;
        if (zzawb == null) {
            return null;
        }
        zzawb.getFullScreenContentCallback();
        return null;
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.getMediationAdapterClassName();
        }
        return null;
    }

    public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.getOnAdMetadataChangedListener();
        }
        return null;
    }

    public OnPaidEventListener getOnPaidEventListener() {
        zzawb zzawb = this.zzhsd;
        if (zzawb == null) {
            return null;
        }
        zzawb.getOnPaidEventListener();
        return null;
    }

    public ResponseInfo getResponseInfo() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.getResponseInfo();
        }
        return null;
    }

    public RewardItem getRewardItem() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.getRewardItem();
        }
        return null;
    }

    @Deprecated
    public boolean isLoaded() {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            return zzawb.isLoaded();
        }
        return false;
    }

    @Deprecated
    public void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.zza(adRequest.zzds(), rewardedAdLoadCallback);
        }
    }

    public void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.setFullScreenContentCallback(fullScreenContentCallback);
        }
    }

    public void setImmersiveMode(boolean z) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.setImmersiveMode(z);
        }
    }

    public void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.setOnAdMetadataChangedListener(onAdMetadataChangedListener);
        }
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.setOnPaidEventListener(onPaidEventListener);
        }
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.show(activity, rewardedAdCallback);
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.zza(publisherAdRequest.zzds(), rewardedAdLoadCallback);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.show(activity, rewardedAdCallback, z);
        }
    }

    public void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzawb zzawb = this.zzhsd;
        if (zzawb != null) {
            zzawb.show(activity, onUserEarnedRewardListener);
        }
    }

    protected RewardedAd() {
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        n.i(context, "Context cannot be null.");
        n.i(str, "AdUnitId cannot be null.");
        n.i(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        n.i(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new zzawb(context, str).zza(adManagerAdRequest.zzds(), rewardedAdLoadCallback);
    }
}
