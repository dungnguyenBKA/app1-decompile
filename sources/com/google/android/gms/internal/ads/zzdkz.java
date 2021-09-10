package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdkz implements zzdzl<zzbyy> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzbzy zzhhx;
    final /* synthetic */ zzdkx zzhhy;

    zzdkz(zzdkx zzdkx, zzcze zzcze, zzbzy zzbzy) {
        this.zzhhy = zzdkx;
        this.zzgzg = zzcze;
        this.zzhhx = zzbzy;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbyy zzbyy) {
        zzbyy zzbyy2 = zzbyy;
        synchronized (this.zzhhy) {
            this.zzhhy.zzhgj = null;
            zzaba<Boolean> zzaba = zzabp.zzczu;
            if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
                zzbyy2.zzakt().zza(this.zzhhy.zzgxy).zza(this.zzhhy.zzhhv);
            }
            this.zzgzg.onSuccess(zzbyy2);
            if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
                this.zzhhy.zzfsj.execute(new zzdky(this));
                this.zzhhy.zzfsj.execute(new zzdlb(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zze = this.zzhhx.zzagj().zze(th);
        synchronized (this.zzhhy) {
            this.zzhhy.zzhgj = null;
            this.zzhhx.zzagk().zzc(zze);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczu)).booleanValue()) {
                this.zzhhy.zzfsj.execute(new zzdla(this, zze));
                this.zzhhy.zzfsj.execute(new zzdld(this, zze));
            }
            zzdod.zza(zze.errorCode, th, "InterstitialAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
