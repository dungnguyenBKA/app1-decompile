package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

public final class zzavc implements RewardedVideoAd {
    private final Context context;
    private final Object lock = new Object();
    private final zzaur zzdzf;
    private final zzavb zzdzg = new zzavb(null);
    private String zzdzh;
    private String zzdzi;

    public zzavc(Context context2, zzaur zzaur) {
        this.zzdzf = zzaur == null ? new zzaak() : zzaur;
        this.context = context2.getApplicationContext();
    }

    private final void zza(String str, zzzk zzzk) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zza(zzvq.zza(this.context, zzzk, str));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    return zzaur.getAdMetadata();
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.lock) {
            str = this.zzdzi;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                return zzaur.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyx = null;
        try {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                zzyx = zzaur.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzyx);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.lock) {
            rewardedVideoAdListener = this.zzdzg.getRewardedVideoAdListener();
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.lock) {
            str = this.zzdzh;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur == null) {
                return false;
            }
            try {
                return zzaur.isLoaded();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        zza(str, adRequest.zzds());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zza(new zzvm(adMetadataListener));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.setCustomData(str);
                    this.zzdzi = str;
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.lock) {
            this.zzdzg.setRewardedVideoAdListener(rewardedVideoAdListener);
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zza(this.zzdzg);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.lock) {
            this.zzdzh = str;
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.setUserId(str);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.show();
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context2) {
        synchronized (this.lock) {
            this.zzdzg.setRewardedVideoAdListener(null);
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zzl(aw.Q(context2));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        zza(str, publisherAdRequest.zzds());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context2) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zzj(aw.Q(context2));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context2) {
        synchronized (this.lock) {
            zzaur zzaur = this.zzdzf;
            if (zzaur != null) {
                try {
                    zzaur.zzk(aw.Q(context2));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
