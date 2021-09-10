package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzbld;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public abstract class zzdif<AppOpenAd extends zzbnt, AppOpenRequestComponent extends zzbld<AppOpenAd>, AppOpenRequestComponentBuilder extends zzbqy<AppOpenRequestComponent>> implements zzczc<AppOpenAd> {
    private final Executor zzfsj;
    private final ViewGroup zzfum;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    protected final zzbgc zzgzs;
    private final Context zzhfk;
    private final zzdil zzhfl;
    private final zzdkn<AppOpenRequestComponent, AppOpenAd> zzhfm;
    @GuardedBy("this")
    @Nullable
    private zzdzw<AppOpenAd> zzhfn;

    protected zzdif(Context context, Executor executor, zzbgc zzbgc, zzdkn<AppOpenRequestComponent, AppOpenAd> zzdkn, zzdil zzdil, zzdnr zzdnr) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgc;
        this.zzhfm = zzdkn;
        this.zzhfl = zzdil;
        this.zzgxu = zzdnr;
        this.zzfum = new FrameLayout(context);
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<AppOpenAd> zzdzw = this.zzhfn;
        return zzdzw != null && !zzdzw.isDone();
    }

    /* access modifiers changed from: protected */
    public abstract AppOpenRequestComponentBuilder zza(zzblu zzblu, zzbqx zzbqx, zzbwg zzbwg);

    @Override // com.google.android.gms.internal.ads.zzczc
    public final synchronized boolean zza(zzvl zzvl, String str, zzczb zzczb, zzcze<? super AppOpenAd> zzcze) {
        n.d("loadAd must be called on the main UI thread.");
        if (str == null) {
            zzazk.zzev("Ad unit ID should not be null for app open ad.");
            this.zzfsj.execute(new zzdie(this));
            return false;
        } else if (this.zzhfn != null) {
            return false;
        } else {
            zzdod.zze(this.zzhfk, zzvl.zzchq);
            zzdnp zzavh = this.zzgxu.zzgs(str).zzg(zzvs.zzqg()).zzh(zzvl).zzavh();
            zzdii zzdii = new zzdii(null);
            zzdii.zzfwy = zzavh;
            zzdzw<AppOpenAd> zza = this.zzhfm.zza(new zzdko(zzdii), new zzdih(this));
            this.zzhfn = zza;
            zzdzk.zza(zza, new zzdig(this, zzcze, zzdii), this.zzfsj);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzauf() {
        this.zzhfl.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final synchronized AppOpenRequestComponentBuilder zzb(zzdkm zzdkm) {
        zzdii zzdii = (zzdii) zzdkm;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
            return zza(new zzblu(this.zzfum), new zzbqx.zza().zzcf(this.zzhfk).zza(zzdii.zzfwy).zzalo(), new zzbwg.zza().zzaml());
        }
        zzdil zzb = zzdil.zzb(this.zzhfl);
        zzbwg.zza zza = new zzbwg.zza();
        zza.zza((zzbrr) zzb, this.zzfsj);
        zza.zza((zzbtg) zzb, this.zzfsj);
        zza.zza((zzq) zzb, this.zzfsj);
        zza.zza(zzb);
        return zza(new zzblu(this.zzfum), new zzbqx.zza().zzcf(this.zzhfk).zza(zzdii.zzfwy).zzalo(), zza.zzaml());
    }

    public final void zza(zzvx zzvx) {
        this.zzgxu.zzb(zzvx);
    }
}
