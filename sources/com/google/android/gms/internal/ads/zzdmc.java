package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

public final class zzdmc implements zzczc<zzchb> {
    private final Executor zzfsj;
    private final zzdnk zzfyy;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    private final zzbgc zzgzs;
    private final Context zzhfk;
    private final zzdkn<zzchi, zzchb> zzhfm;
    @GuardedBy("this")
    private zzdzw<zzchb> zzhgj;
    private final zzdlh zzhii;

    public zzdmc(Context context, Executor executor, zzbgc zzbgc, zzdkn<zzchi, zzchb> zzdkn, zzdlh zzdlh, zzdnr zzdnr, zzdnk zzdnk) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgc;
        this.zzhfm = zzdkn;
        this.zzhii = zzdlh;
        this.zzgxu = zzdnr;
        this.zzfyy = zzdnk;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzd */
    public final zzchh zze(zzdkm zzdkm) {
        zzdmi zzdmi = (zzdmi) zzdkm;
        return this.zzgzs.zzafp().zzf(new zzbqx.zza().zzcf(this.zzhfk).zza(zzdmi.zzfwy).zzfs(zzdmi.zzhij).zza(this.zzfyy).zzalo()).zzf(new zzbwg.zza().zzaml());
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<zzchb> zzdzw = this.zzhgj;
        return zzdzw != null && !zzdzw.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvl, String str, zzczb zzczb, zzcze<? super zzchb> zzcze) {
        zzava zzava = new zzava(zzvl, str);
        if (zzczb instanceof zzdmd) {
            zzdmd zzdmd = (zzdmd) zzczb;
        }
        if (zzava.zzbut == null) {
            zzazk.zzev("Ad unit ID should not be null for rewarded video ad.");
            this.zzfsj.execute(new zzdmf(this));
            return false;
        }
        zzdzw<zzchb> zzdzw = this.zzhgj;
        if (zzdzw != null && !zzdzw.isDone()) {
            return false;
        }
        zzdod.zze(this.zzhfk, zzava.zzdud.zzchq);
        zzdnp zzavh = this.zzgxu.zzgs(zzava.zzbut).zzg(zzvs.zzqf()).zzh(zzava.zzdud).zzavh();
        zzdmi zzdmi = new zzdmi(null);
        zzdmi.zzfwy = zzavh;
        zzdmi.zzhij = null;
        zzdzw<zzchb> zza = this.zzhfm.zza(new zzdko(zzdmi), new zzdme(this));
        this.zzhgj = zza;
        zzdzk.zza(zza, new zzdmh(this, zzcze, zzdmi), this.zzfsj);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzauv() {
        this.zzhii.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    /* access modifiers changed from: package-private */
    public final void zzec(int i) {
        this.zzgxu.zzavg().zzed(i);
    }
}
