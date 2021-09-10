package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import javax.annotation.concurrent.GuardedBy;

public final class zzczg implements zzczc<zzbnt> {
    private final zzbgc zzguy;
    private final Context zzgxt;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    private final zzcza zzgze;
    @GuardedBy("this")
    private zzboe zzgzf;

    public zzczg(zzbgc zzbgc, Context context, zzcza zzcza, zzdnr zzdnr) {
        this.zzguy = zzbgc;
        this.zzgxt = context;
        this.zzgze = zzcza;
        this.zzgxu = zzdnr;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzboe zzboe = this.zzgzf;
        return zzboe != null && zzboe.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvl, String str, zzczb zzczb, zzcze<? super zzbnt> zzcze) {
        zzr.zzkr();
        if (zzj.zzaz(this.zzgxt) && zzvl.zzcia == null) {
            zzazk.zzev("Failed to load the ad because app ID is missing.");
            this.zzguy.zzafa().execute(new zzczf(this));
            return false;
        } else if (str == null) {
            zzazk.zzev("Ad unit ID should not be null for NativeAdLoader.");
            this.zzguy.zzafa().execute(new zzczi(this));
            return false;
        } else {
            zzdod.zze(this.zzgxt, zzvl.zzchq);
            zzcau zzagl = this.zzguy.zzafo().zza(new zzbqx.zza().zzcf(this.zzgxt).zza(this.zzgxu.zzh(zzvl).zzee(zzczb instanceof zzczd ? ((zzczd) zzczb).zzgzc : 1).zzavh()).zzalo()).zza(new zzbwg.zza().zzaml()).zza(this.zzgze.zzaso()).zza(new zzblu(null)).zzagl();
            this.zzguy.zzafu().ensureSize(1);
            zzboe zzboe = new zzboe(this.zzguy.zzafc(), this.zzguy.zzafb(), zzagl.zzagj().zzalb());
            this.zzgzf = zzboe;
            zzboe.zza(new zzczh(this, zzcze, zzagl));
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzass() {
        this.zzgze.zzasr().zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzast() {
        this.zzgze.zzasr().zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
    }
}
