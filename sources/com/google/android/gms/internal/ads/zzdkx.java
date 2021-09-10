package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

public final class zzdkx implements zzczc<zzbyy> {
    private final Executor zzfsj;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    private final zzcxy zzgxy;
    private final zzbgc zzgzs;
    private final Context zzhfk;
    private zzacl zzhgh;
    @GuardedBy("this")
    private zzdzw<zzbyy> zzhgj;
    private final zzdlh zzhhv;

    public zzdkx(Context context, Executor executor, zzbgc zzbgc, zzcxy zzcxy, zzdlh zzdlh, zzdnr zzdnr) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgc;
        this.zzgxy = zzcxy;
        this.zzgxu = zzdnr;
        this.zzhhv = zzdlh;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<zzbyy> zzdzw = this.zzhgj;
        return zzdzw != null && !zzdzw.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvl, String str, zzczb zzczb, zzcze<? super zzbyy> zzcze) {
        zzvs zzvs;
        zzbzy zzbzy;
        if (str == null) {
            zzazk.zzev("Ad unit ID should not be null for interstitial ad.");
            this.zzfsj.execute(new zzdkw(this));
            return false;
        } else if (isLoading()) {
            return false;
        } else {
            if (zzczb instanceof zzdku) {
                zzvs = ((zzdku) zzczb).zzebq;
            } else {
                zzvs = new zzvs();
            }
            zzdnp zzavh = this.zzgxu.zzgs(str).zzg(zzvs).zzh(zzvl).zzavh();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczu)).booleanValue()) {
                zzbzy = this.zzgzs.zzafm().zze(new zzbqx.zza().zzcf(this.zzhfk).zza(zzavh).zzalo()).zze(new zzbwg.zza().zza((zzbua) this.zzgxy, this.zzfsj).zza((AppEventListener) this.zzgxy, this.zzfsj).zzaml()).zzb(new zzcxa(this.zzhgh)).zzahx();
            } else {
                zzbwg.zza zza = new zzbwg.zza();
                zzdlh zzdlh = this.zzhhv;
                if (zzdlh != null) {
                    zza.zza((zzbrm) zzdlh, this.zzfsj).zza((zzbtb) this.zzhhv, this.zzfsj).zza((zzbrr) this.zzhhv, this.zzfsj);
                }
                zzbzy = this.zzgzs.zzafm().zze(new zzbqx.zza().zzcf(this.zzhfk).zza(zzavh).zzalo()).zze(zza.zza((zzbua) this.zzgxy, this.zzfsj).zza((zzbrm) this.zzgxy, this.zzfsj).zza((zzbtb) this.zzgxy, this.zzfsj).zza((zzbrr) this.zzgxy, this.zzfsj).zza((zzvc) this.zzgxy, this.zzfsj).zza((AppEventListener) this.zzgxy, this.zzfsj).zza((zzbtt) this.zzgxy, this.zzfsj).zza((zzbsa) this.zzgxy, this.zzfsj).zzaml()).zzb(new zzcxa(this.zzhgh)).zzahx();
            }
            zzdzw<zzbyy> zzalb = zzbzy.zzagj().zzalb();
            this.zzhgj = zzalb;
            zzdzk.zza(zzalb, new zzdkz(this, zzcze, zzbzy), this.zzfsj);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzauu() {
        this.zzgxy.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    public final void zza(zzacl zzacl) {
        this.zzhgh = zzacl;
    }
}
