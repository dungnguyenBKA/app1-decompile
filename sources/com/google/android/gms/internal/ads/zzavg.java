package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.n;

public final class zzavg implements MediationRewardedVideoAdListener {
    private final zzavf zzdzj;

    public zzavg(zzavf zzavf) {
        this.zzdzj = zzavf;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClicked.");
        try {
            this.zzdzj.zzak(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClosed.");
        try {
            this.zzdzj.zzaj(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdFailedToLoad.");
        try {
            this.zzdzj.zze(aw.Q(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLeftApplication.");
        try {
            this.zzdzj.zzal(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLoaded.");
        try {
            this.zzdzj.zzag(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdOpened.");
        try {
            this.zzdzj.zzah(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onInitializationFailed.");
        try {
            this.zzdzj.zzd(aw.Q(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onInitializationSucceeded.");
        try {
            this.zzdzj.zzaf(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onRewarded.");
        if (rewardItem != null) {
            try {
                this.zzdzj.zza(aw.Q(mediationRewardedVideoAdAdapter), new zzavj(rewardItem));
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        } else {
            this.zzdzj.zza(aw.Q(mediationRewardedVideoAdAdapter), new zzavj("", 1));
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onVideoCompleted.");
        try {
            this.zzdzj.zzam(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onVideoStarted.");
        try {
            this.zzdzj.zzai(aw.Q(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzb(Bundle bundle) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdMetadataChanged.");
        try {
            this.zzdzj.zzb(bundle);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
