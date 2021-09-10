package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public final class zzdmh implements zzdzl<zzchb> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzdmi zzhim;
    final /* synthetic */ zzdmc zzhin;

    zzdmh(zzdmc zzdmc, zzcze zzcze, zzdmi zzdmi) {
        this.zzhin = zzdmc;
        this.zzgzg = zzcze;
        this.zzhim = zzdmi;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzchb zzchb) {
        zzchb zzchb2 = zzchb;
        synchronized (this.zzhin) {
            zzchb2.zzakt().zza(this.zzhin.zzhii);
            this.zzgzg.onSuccess(zzchb2);
            Executor executor = this.zzhin.zzfsj;
            zzdlh zzdlh = this.zzhin.zzhii;
            zzdlh.getClass();
            executor.execute(zzdmg.zzb(zzdlh));
            this.zzhin.zzhii.onAdMetadataChanged();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zzvg;
        zzchi zzchi = (zzchi) this.zzhin.zzhfm.zzaun();
        if (zzchi == null) {
            zzvg = zzdok.zza(th, (zzcrq) null);
        } else {
            zzvg = zzchi.zzagj().zze(th);
        }
        synchronized (this.zzhin) {
            if (zzchi != null) {
                zzchi.zzagk().zzc(zzvg);
                this.zzhin.zzfsj.execute(new zzdmj(this, zzvg));
            } else {
                this.zzhin.zzhii.zzc(zzvg);
                this.zzhin.zze(this.zzhim).zzaid().zzagj().zzalc().zzalx();
            }
            zzdod.zza(zzvg.errorCode, th, "RewardedAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
