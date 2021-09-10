package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

public final class zzdhx extends zzxo implements zzz, zzbtg, zzsh {
    private final zzazn zzboz;
    private final String zzbut;
    private final ViewGroup zzfum;
    private final zzbgc zzguy;
    private final Context zzgxt;
    private AtomicBoolean zzhfb = new AtomicBoolean();
    private final zzdhv zzhfc;
    private final zzdil zzhfd;
    private long zzhfe = -1;
    private zzbkq zzhff;
    @GuardedBy("this")
    protected zzblg zzhfg;

    public zzdhx(zzbgc zzbgc, Context context, String str, zzdhv zzdhv, zzdil zzdil, zzazn zzazn) {
        this.zzfum = new FrameLayout(context);
        this.zzguy = zzbgc;
        this.zzgxt = context;
        this.zzbut = str;
        this.zzhfc = zzdhv;
        this.zzhfd = zzdil;
        zzdil.zza(this);
        this.zzboz = zzazn;
    }

    /* access modifiers changed from: private */
    public final zzvs zzauc() {
        return zzdnu.zzb(this.zzgxt, Collections.singletonList(this.zzhfg.zzajq()));
    }

    /* access modifiers changed from: private */
    public static RelativeLayout.LayoutParams zzb(zzblg zzblg) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzblg.zzadp() ? 11 : 9);
        return layoutParams;
    }

    /* access modifiers changed from: private */
    public final void zzc(zzblg zzblg) {
        zzblg.zza(this);
    }

    private final synchronized void zzeb(int i) {
        if (this.zzhfb.compareAndSet(false, true)) {
            zzblg zzblg = this.zzhfg;
            if (!(zzblg == null || zzblg.zzajt() == null)) {
                this.zzhfd.zzb(this.zzhfg.zzajt());
            }
            this.zzhfd.onAdClosed();
            this.zzfum.removeAllViews();
            zzbkq zzbkq = this.zzhff;
            if (zzbkq != null) {
                zzr.zzku().zzb(zzbkq);
            }
            if (this.zzhfg != null) {
                long j = -1;
                if (this.zzhfe != -1) {
                    j = zzr.zzky().b() - this.zzhfe;
                }
                this.zzhfg.zzb(j, i);
            }
            destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void destroy() {
        n.d("destroy must be called on the main UI thread.");
        zzblg zzblg = this.zzhfg;
        if (zzblg != null) {
            zzblg.destroy();
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
        return this.zzhfc.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
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
    public final void zza(zzvl zzvl, zzxc zzxc) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
        this.zzhfc.zza(zzvx);
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

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        if (this.zzhfg != null) {
            this.zzhfe = zzr.zzky().b();
            int zzajh = this.zzhfg.zzajh();
            if (zzajh > 0) {
                zzbkq zzbkq = new zzbkq(this.zzguy.zzafb(), zzr.zzky());
                this.zzhff = zzbkq;
                zzbkq.zza(zzajh, new zzdhz(this));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaud() {
        zzwr.zzqn();
        if (zzaza.zzzx()) {
            zzeb(zzbkw.zzftw);
        } else {
            this.zzguy.zzafa().execute(new zzdhw(this));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaue() {
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
        n.d("getAdFrame must be called on the main UI thread.");
        return aw.Q(this.zzfum);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized void zzkf() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final synchronized zzvs zzkg() {
        n.d("getAdSize must be called on the main UI thread.");
        zzblg zzblg = this.zzhfg;
        if (zzblg == null) {
            return null;
        }
        return zzdnu.zzb(this.zzgxt, Collections.singletonList(zzblg.zzajq()));
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

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzvv() {
        zzeb(zzbkw.zzftv);
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
            return this.zzhfc.zza(zzvl, this.zzbut, new zzdhy(this), new zzdib(this));
        }
    }

    /* access modifiers changed from: private */
    public final zzp zza(zzblg zzblg) {
        boolean zzadp = zzblg.zzadp();
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvf)).intValue();
        zzs zzs = new zzs();
        zzs.size = 50;
        zzs.paddingLeft = zzadp ? intValue : 0;
        zzs.paddingRight = zzadp ? 0 : intValue;
        zzs.paddingTop = 0;
        zzs.paddingBottom = intValue;
        return new zzp(this.zzgxt, zzs, this);
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
