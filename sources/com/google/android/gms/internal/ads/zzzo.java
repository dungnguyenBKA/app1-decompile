package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

public final class zzzo {
    private final Context context;
    private final zzvq zzact;
    private AppEventListener zzboe;
    private String zzbut;
    private zzxl zzbuz;
    private final zzanf zzbvb;
    private zzvc zzchd;
    private AdListener zzchm;
    private AdMetadataListener zzcid;
    private OnCustomRenderedAdLoadedListener zzcko;
    private OnPaidEventListener zzckr;
    private RewardedVideoAdListener zzckz;
    private boolean zzcla;
    private Boolean zzclb;

    public zzzo(Context context2) {
        this(context2, zzvq.zzcif, null);
    }

    private final void zzcn(String str) {
        if (this.zzbuz == null) {
            throw new IllegalStateException(ic.e(ic.m(str, 63), "The ad unit ID must be set on InterstitialAd before ", str, " is called."));
        }
    }

    public final AdListener getAdListener() {
        return this.zzchm;
    }

    public final Bundle getAdMetadata() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                return zzxl.getAdMetadata();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    public final String getAdUnitId() {
        return this.zzbut;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzboe;
    }

    public final String getMediationAdapterClassName() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                return zzxl.zzkh();
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcko;
    }

    public final ResponseInfo getResponseInfo() {
        zzyx zzyx = null;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzyx = zzxl.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzyx);
    }

    public final boolean isLoaded() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl == null) {
                return false;
            }
            return zzxl.isReady();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean isLoading() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl == null) {
                return false;
            }
            return zzxl.isLoading();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void setAdListener(AdListener adListener) {
        try {
            this.zzchm = adListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(adListener != null ? new zzvi(adListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        try {
            this.zzcid = adMetadataListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(adMetadataListener != null ? new zzvm(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdUnitId(String str) {
        if (this.zzbut == null) {
            this.zzbut = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzboe = appEventListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(appEventListener != null ? new zzvy(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.zzclb = Boolean.valueOf(z);
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.zzcko = onCustomRenderedAdLoadedListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(onCustomRenderedAdLoadedListener != null ? new zzacm(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzckr = onPaidEventListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(new zzaap(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.zzckz = rewardedVideoAdListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(rewardedVideoAdListener != null ? new zzavb(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        try {
            zzcn("show");
            this.zzbuz.showInterstitial();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzzk zzzk) {
        try {
            if (this.zzbuz == null) {
                if (this.zzbut == null) {
                    zzcn("loadAd");
                }
                zzxl zzb = zzwr.zzqo().zzb(this.context, this.zzcla ? zzvs.zzqf() : new zzvs(), this.zzbut, this.zzbvb);
                this.zzbuz = zzb;
                if (this.zzchm != null) {
                    zzb.zza(new zzvi(this.zzchm));
                }
                if (this.zzchd != null) {
                    this.zzbuz.zza(new zzvb(this.zzchd));
                }
                if (this.zzcid != null) {
                    this.zzbuz.zza(new zzvm(this.zzcid));
                }
                if (this.zzboe != null) {
                    this.zzbuz.zza(new zzvy(this.zzboe));
                }
                if (this.zzcko != null) {
                    this.zzbuz.zza(new zzacm(this.zzcko));
                }
                if (this.zzckz != null) {
                    this.zzbuz.zza(new zzavb(this.zzckz));
                }
                this.zzbuz.zza(new zzaap(this.zzckr));
                Boolean bool = this.zzclb;
                if (bool != null) {
                    this.zzbuz.setImmersiveMode(bool.booleanValue());
                }
            }
            if (this.zzbuz.zza(zzvq.zza(this.context, zzzk))) {
                this.zzbvb.zzf(zzzk.zzrk());
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zzd(boolean z) {
        this.zzcla = true;
    }

    public zzzo(Context context2, PublisherInterstitialAd publisherInterstitialAd) {
        this(context2, zzvq.zzcif, publisherInterstitialAd);
    }

    private zzzo(Context context2, zzvq zzvq, PublisherInterstitialAd publisherInterstitialAd) {
        this.zzbvb = new zzanf();
        this.context = context2;
        this.zzact = zzvq;
    }

    public final void zza(zzvc zzvc) {
        try {
            this.zzchd = zzvc;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(zzvc != null ? new zzvb(zzvc) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
