package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

public final class zzdiz extends zzxo implements zzq, zzsh {
    private final String zzbut;
    private final zzbgc zzguy;
    private final Context zzgxt;
    private AtomicBoolean zzhfb = new AtomicBoolean();
    private final zzdil zzhfd;
    @GuardedBy("this")
    private zzbkq zzhff;
    private final zzdix zzhgb;
    @GuardedBy("this")
    private long zzhgc = -1;
    @GuardedBy("this")
    protected zzblq zzhgd;

    public zzdiz(zzbgc zzbgc, Context context, String str, zzdix zzdix, zzdil zzdil) {
        this.zzguy = zzbgc;
        this.zzgxt = context;
        this.zzbut = str;
        this.zzhgb = zzdix;
        this.zzhfd = zzdil;
        zzdil.zza(this);
    }

    private final synchronized void zzeb(int i) {
        if (this.zzhfb.compareAndSet(false, true)) {
            this.zzhfd.onAdClosed();
            zzbkq zzbkq = this.zzhff;
            if (zzbkq != null) {
                zzr.zzku().zzb(zzbkq);
            }
            if (this.zzhgd != null) {
                long j = -1;
                if (this.zzhgc != -1) {
                    j = zzr.zzky().b() - this.zzhgc;
                }
                this.zzhgd.zzb(j, i);
            }
            destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void destroy() {
        n.d("destroy must be called on the main UI thread.");
        zzblq zzblq = this.zzhgd;
        if (zzblq != null) {
            zzblq.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean isLoading() {
        return this.zzhgb.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onUserLeaveHint() {
        zzblq zzblq = this.zzhgd;
        if (zzblq != null) {
            zzblq.zzb(zzr.zzky().b() - this.zzhgc, zzbkw.zzfts);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void pause() {
        n.d("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void resume() {
        n.d("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void showInterstitial() {
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
    public final void zza(zzvl zzvl, zzxc zzxc) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
        this.zzhgb.zza(zzvx);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwx) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxs) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxt) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzyw) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaug() {
        this.zzguy.zzafa().execute(new zzdiy(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzauh() {
        zzeb(zzbkw.zzftw);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zzkf() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzvs zzkg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized String zzkh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzyx zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void zzmt() {
        zzeb(zzbkw.zzftu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void zzvo() {
        if (this.zzhgd != null) {
            this.zzhgc = zzr.zzky().b();
            int zzajh = this.zzhgd.zzajh();
            if (zzajh > 0) {
                zzbkq zzbkq = new zzbkq(this.zzguy.zzafb(), zzr.zzky());
                this.zzhff = zzbkq;
                zzbkq.zza(zzajh, new zzdjb(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized boolean zza(zzvl zzvl) {
        n.d("loadAd must be called on the main UI thread.");
        zzr.zzkr();
        if (zzj.zzaz(this.zzgxt) && zzvl.zzcia == null) {
            zzazk.zzev("Failed to load the ad because app ID is missing.");
            this.zzhfd.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
            return false;
        } else if (isLoading()) {
            return false;
        } else {
            this.zzhfb = new AtomicBoolean();
            return this.zzhgb.zza(zzvl, this.zzbut, new zzdja(this), new zzdjd(this));
        }
    }

    /* access modifiers changed from: private */
    public final void zza(zzblq zzblq) {
        zzblq.zza(this);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        int i = zzdjc.zzhge[zzn.ordinal()];
        if (i == 1) {
            zzeb(zzbkw.zzftu);
        } else if (i == 2) {
            zzeb(zzbkw.zzftt);
        } else if (i == 3) {
            zzeb(zzbkw.zzftv);
        } else if (i == 4) {
            zzeb(zzbkw.zzftx);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
        this.zzhfd.zzb(zzsp);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzvs zzvs) {
        n.d("setAdSize must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzxz zzxz) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzaau zzaau) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zza(zzacl zzacl) {
    }
}
