package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.n;
import javax.annotation.concurrent.GuardedBy;

public final class zzdmq extends zzauq {
    private final zzdnk zzfyy;
    @GuardedBy("this")
    private boolean zzgyo = false;
    private final zzdmc zzhip;
    private final zzdlh zzhiq;
    @GuardedBy("this")
    private zzchb zzhir;

    public zzdmq(zzdmc zzdmc, zzdlh zzdlh, zzdnk zzdnk) {
        this.zzhip = zzdmc;
        this.zzhiq = zzdlh;
        this.zzfyy = zzdnk;
    }

    private final synchronized boolean zzasm() {
        zzchb zzchb;
        zzchb = this.zzhir;
        return zzchb != null && !zzchb.isClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void destroy() {
        zzl(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final Bundle getAdMetadata() {
        n.d("getAdMetadata can only be called from the UI thread.");
        zzchb zzchb = this.zzhir;
        return zzchb != null ? zzchb.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized String getMediationAdapterClassName() {
        zzchb zzchb = this.zzhir;
        if (zzchb == null || zzchb.zzakr() == null) {
            return null;
        }
        return this.zzhir.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean isLoaded() {
        n.d("isLoaded must be called on the main UI thread.");
        return zzasm();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void pause() {
        zzj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void resume() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void setCustomData(String str) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpk)).booleanValue()) {
            n.d("#008 Must be called on the main UI thread.: setCustomData");
            this.zzfyy.zzdzi = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void setImmersiveMode(boolean z) {
        n.d("setImmersiveMode must be called on the main UI thread.");
        this.zzgyo = z;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void setUserId(String str) {
        n.d("setUserId must be called on the main UI thread.");
        this.zzfyy.zzdzh = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void show() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void zza(zzava zzava) {
        n.d("loadAd must be called on the main UI thread.");
        if (!zzabr.zzcp(zzava.zzbut)) {
            if (zzasm()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcwh)).booleanValue()) {
                    return;
                }
            }
            zzdmd zzdmd = new zzdmd(null);
            this.zzhir = null;
            this.zzhip.zzec(zzdnh.zzhkk);
            this.zzhip.zza(zzava.zzdud, zzava.zzbut, zzdmd, new zzdmt(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void zzi(zv zvVar) {
        Activity activity;
        n.d("showAd must be called on the main UI thread.");
        if (this.zzhir != null) {
            if (zvVar != null) {
                Object P = aw.P(zvVar);
                if (P instanceof Activity) {
                    activity = (Activity) P;
                    this.zzhir.zzb(this.zzgyo, activity);
                }
            }
            activity = null;
            this.zzhir.zzb(this.zzgyo, activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void zzj(zv zvVar) {
        Context context;
        n.d("pause must be called on the main UI thread.");
        if (this.zzhir != null) {
            if (zvVar == null) {
                context = null;
            } else {
                context = (Context) aw.P(zvVar);
            }
            this.zzhir.zzakq().zzcb(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void zzk(zv zvVar) {
        Context context;
        n.d("resume must be called on the main UI thread.");
        if (this.zzhir != null) {
            if (zvVar == null) {
                context = null;
            } else {
                context = (Context) aw.P(zvVar);
            }
            this.zzhir.zzakq().zzcc(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        zzchb zzchb = this.zzhir;
        if (zzchb == null) {
            return null;
        }
        return zzchb.zzakr();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final synchronized void zzl(zv zvVar) {
        n.d("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzhiq.zza(null);
        if (this.zzhir != null) {
            if (zvVar != null) {
                context = (Context) aw.P(zvVar);
            }
            this.zzhir.zzakq().zzcd(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean zzrw() {
        zzchb zzchb = this.zzhir;
        return zzchb != null && zzchb.zzrw();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzauu zzauu) {
        n.d("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzhiq.zzb(zzauu);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzaup zzaup) {
        n.d("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzhiq.zzb(zzaup);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzxs zzxs) {
        n.d("setAdMetadataListener can only be called from the UI thread.");
        if (zzxs == null) {
            this.zzhiq.zza(null);
        } else {
            this.zzhiq.zza(new zzdms(this, zzxs));
        }
    }
}
