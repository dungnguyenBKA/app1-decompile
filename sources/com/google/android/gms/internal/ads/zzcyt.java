package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import javax.annotation.concurrent.GuardedBy;

public final class zzcyt extends zzxo {
    private final zzvs zzbpo;
    private final String zzbut;
    private final Context zzgxt;
    private final zzcxy zzgxy;
    private final zzdkx zzgyl;
    private final zzdlh zzgym;
    @GuardedBy("this")
    private zzbyy zzgyn;
    @GuardedBy("this")
    private boolean zzgyo = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcox)).booleanValue();

    public zzcyt(Context context, zzvs zzvs, String str, zzdkx zzdkx, zzcxy zzcxy, zzdlh zzdlh) {
        this.zzbpo = zzvs;
        this.zzbut = str;
        this.zzgxt = context;
        this.zzgyl = zzdkx;
        this.zzgxy = zzcxy;
        this.zzgym = zzdlh;
    }

    private final synchronized boolean zzasm() {
        zzbyy zzbyy;
        zzbyy = this.zzgyn;
        return zzbyy != null && !zzbyy.isClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void destroy() {
        n.d("destroy must be called on the main UI thread.");
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy != null) {
            zzbyy.zzakq().zzcd(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        n.d("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String getMediationAdapterClassName() {
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy == null || zzbyy.zzakr() == null) {
            return null;
        }
        return this.zzgyn.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean isLoading() {
        return this.zzgyl.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean isReady() {
        n.d("isLoaded must be called on the main UI thread.");
        return zzasm();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void pause() {
        n.d("pause must be called on the main UI thread.");
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy != null) {
            zzbyy.zzakq().zzcb(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void resume() {
        n.d("resume must be called on the main UI thread.");
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy != null) {
            zzbyy.zzakq().zzcc(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void setImmersiveMode(boolean z) {
        n.d("setImmersiveMode must be called on the main UI thread.");
        this.zzgyo = z;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void showInterstitial() {
        n.d("showInterstitial must be called on the main UI thread.");
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy != null) {
            zzbyy.zzb(this.zzgyo, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaau) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzary) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzase, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvs) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxz) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean zza(zzvl zzvl) {
        n.d("loadAd must be called on the main UI thread.");
        zzr.zzkr();
        if (zzj.zzaz(this.zzgxt) && zzvl.zzcia == null) {
            zzazk.zzev("Failed to load the ad because app ID is missing.");
            zzcxy zzcxy = this.zzgxy;
            if (zzcxy != null) {
                zzcxy.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
            }
            return false;
        } else if (zzasm()) {
            return false;
        } else {
            zzdod.zze(this.zzgxt, zzvl.zzchq);
            this.zzgyn = null;
            return this.zzgyl.zza(zzvl, this.zzbut, new zzdku(this.zzbpo), new zzcyw(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zze(zv zvVar) {
        if (this.zzgyn == null) {
            zzazk.zzex("Interstitial can not be shown before loaded.");
            this.zzgxy.zzk(zzdok.zza(zzdom.NOT_READY, null, null));
            return;
        }
        this.zzgyn.zzb(this.zzgyo, (Activity) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String zzkh() {
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy == null || zzbyy.zzakr() == null) {
            return null;
        }
        return this.zzgyn.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        zzbyy zzbyy = this.zzgyn;
        if (zzbyy == null) {
            return null;
        }
        return zzbyy.zzakr();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        return this.zzgxy.zzask();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        return this.zzgxy.zzasj();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvl, zzxc zzxc) {
        this.zzgxy.zza(zzxc);
        zza(zzvl);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
        this.zzgxy.zzb(zzyb);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwx) {
        n.d("setAdListener must be called on the main UI thread.");
        this.zzgxy.zzc(zzwx);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxt) {
        n.d("setAppEventListener must be called on the main UI thread.");
        this.zzgxy.zzb(zzxt);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzacl zzacl) {
        n.d("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgyl.zza(zzacl);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzyw) {
        n.d("setPaidEventListener must be called on the main UI thread.");
        this.zzgxy.zzb(zzyw);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxs) {
        n.d("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauu) {
        this.zzgym.zzb(zzauu);
    }
}
