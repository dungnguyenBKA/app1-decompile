package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.Collections;
import javax.annotation.concurrent.GuardedBy;

public final class zzcxw extends zzxo implements zzbtw {
    private final String zzbut;
    @GuardedBy("this")
    private zzblv zzgxr;
    private final Context zzgxt;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    private final zzdje zzgxx;
    private final zzcxy zzgxy;
    private zzvs zzgxz;

    public zzcxw(Context context, zzvs zzvs, String str, zzdje zzdje, zzcxy zzcxy) {
        this.zzgxt = context;
        this.zzgxx = zzdje;
        this.zzgxz = zzvs;
        this.zzbut = str;
        this.zzgxy = zzcxy;
        this.zzgxu = zzdje.zzauj();
        zzdje.zza(this);
    }

    private final synchronized void zzf(zzvs zzvs) {
        this.zzgxu.zzg(zzvs);
        this.zzgxu.zzbm(this.zzgxz.zzcin);
    }

    private final synchronized boolean zzg(zzvl zzvl) {
        n.d("loadAd must be called on the main UI thread.");
        zzr.zzkr();
        if (!zzj.zzaz(this.zzgxt) || zzvl.zzcia != null) {
            zzdod.zze(this.zzgxt, zzvl.zzchq);
            return this.zzgxx.zza(zzvl, this.zzbut, null, new zzcxv(this));
        }
        zzazk.zzev("Failed to load the ad because app ID is missing.");
        zzcxy zzcxy = this.zzgxy;
        if (zzcxy != null) {
            zzcxy.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void destroy() {
        n.d("destroy must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.destroy();
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
        zzblv zzblv = this.zzgxr;
        if (zzblv == null || zzblv.zzakr() == null) {
            return null;
        }
        return this.zzgxr.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzzc getVideoController() {
        n.d("getVideoController must be called from the main thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv == null) {
            return null;
        }
        return zzblv.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean isLoading() {
        return this.zzgxx.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void pause() {
        n.d("pause must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.zzakq().zzcb(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void resume() {
        n.d("resume must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.zzakq().zzcc(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        n.d("setManualImpressionsEnabled must be called from the main thread.");
        this.zzgxu.zzbn(z);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzary) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzase, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauu) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvl, zzxc zzxc) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean zza(zzvl zzvl) {
        zzf(this.zzgxz);
        return zzg(zzvl);
    }

    @Override // com.google.android.gms.internal.ads.zzbtw
    public final synchronized void zzalu() {
        if (this.zzgxx.zzauk()) {
            zzvs zzkg = this.zzgxu.zzkg();
            zzblv zzblv = this.zzgxr;
            if (!(zzblv == null || zzblv.zzajz() == null || !this.zzgxu.zzavi())) {
                zzkg = zzdnu.zzb(this.zzgxt, Collections.singletonList(this.zzgxr.zzajz()));
            }
            zzf(zzkg);
            try {
                zzg(this.zzgxu.zzave());
            } catch (RemoteException unused) {
                zzazk.zzex("Failed to refresh the banner ad.");
            }
        } else {
            this.zzgxx.zzaul();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        n.d("destroy must be called on the main UI thread.");
        return aw.Q(this.zzgxx.zzaui());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zzkf() {
        n.d("recordManualImpression must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.zzkf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzvs zzkg() {
        n.d("getAdSize must be called on the main UI thread.");
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            return zzdnu.zzb(this.zzgxt, Collections.singletonList(zzblv.zzajq()));
        }
        return this.zzgxu.zzkg();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String zzkh() {
        zzblv zzblv = this.zzgxr;
        if (zzblv == null || zzblv.zzakr() == null) {
            return null;
        }
        return this.zzgxr.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        zzblv zzblv = this.zzgxr;
        if (zzblv == null) {
            return null;
        }
        return zzblv.zzakr();
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
    public final synchronized void zza(zzvs zzvs) {
        n.d("setAdSize must be called on the main UI thread.");
        this.zzgxu.zzg(zzvs);
        this.zzgxz = zzvs;
        zzblv zzblv = this.zzgxr;
        if (zzblv != null) {
            zzblv.zza(this.zzgxx.zzaui(), zzvs);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzxz zzxz) {
        n.d("setCorrelationIdProvider must be called on the main UI thread");
        this.zzgxu.zzc(zzxz);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzaau zzaau) {
        n.d("setVideoOptions must be called on the main UI thread.");
        this.zzgxu.zzc(zzaau);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
        n.d("setAdListener must be called on the main UI thread.");
        this.zzgxx.zza(zzww);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzacl zzacl) {
        n.d("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgxx.zza(zzacl);
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
}
