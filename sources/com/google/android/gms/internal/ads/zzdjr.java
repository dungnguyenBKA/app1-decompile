package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzug;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

public final class zzdjr<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, AdT> {
    private final Executor executor;
    private final zzdkn<R, AdT> zzhfm;
    private final zzdkn<R, zzdka<AdT>> zzhgz;
    private final zzdpu<AdT> zzhha;
    @GuardedBy("this")
    private R zzhhb;

    public zzdjr(zzdkn<R, AdT> zzdkn, zzdkn<R, zzdka<AdT>> zzdkn2, zzdpu<AdT> zzdpu, Executor executor2) {
        this.zzhfm = zzdkn;
        this.zzhgz = zzdkn2;
        this.zzhha = zzdpu;
        this.executor = executor2;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzauo */
    public final synchronized R zzaun() {
        return this.zzhhb;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final synchronized zzdzw<AdT> zza(zzdko zzdko, zzdkp<R> zzdkp) {
        zzdnp zzahg;
        zzahg = zzdkp.zzc(zzdko.zzhht).zzagm().zzahg();
        return zzdzf.zzg(this.zzhgz.zza(zzdko, zzdkp)).zzb(new zzdjq(this, zzdko, new zzdju(zzdkp, zzdko, zzahg.zzhkw, zzahg.zzhkx, this.executor, zzahg.zzhla, null), zzdkp), this.executor);
    }

    private final zzdzw<AdT> zza(zzdpm<AdT> zzdpm, zzdko zzdko, zzdkp<R> zzdkp) {
        zzbqy<R> zzc = zzdkp.zzc(zzdko.zzhht);
        if (zzdpm.zzhoi != null) {
            R zzagm = zzc.zzagm();
            if (zzagm.zzahh() != null) {
                zzdpm.zzhoi.zzaks().zzb(zzagm.zzahh());
            }
            return zzdzk.zzag(zzdpm.zzhoi);
        }
        zzc.zza(zzdpm.zzeyz);
        zzdzw<AdT> zza = this.zzhfm.zza(zzdko, new zzdjt(zzc));
        this.zzhhb = this.zzhfm.zzaun();
        return zza;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdkp zzdkp, zzdpy zzdpy) {
        zzdqa zzdqa;
        if (zzdpy == null || zzdpy.zzhhn == null || (zzdqa = zzdpy.zzhoy) == null) {
            throw new zzcmb(zzdom.INTERNAL_ERROR, "Empty prefetch");
        }
        zzdpy.zzhhn.zzhoh.zzalc().zze((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC0071zzb.IN_MEMORY).zza(zzug.zzb.zzd.zznp())).zzbiw()));
        return zza(zzdpy.zzhhn, ((zzdju) zzdqa).zzhhf, zzdkp);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdko zzdko, zzdju zzdju, zzdkp zzdkp, zzdka zzdka) {
        if (zzdka != null) {
            zzdju zzdju2 = new zzdju(zzdju.zzhhe, zzdju.zzhhf, zzdju.zzdud, zzdju.zzbut, zzdju.executor, zzdju.zzhba, zzdka.zzhhg);
            if (zzdka.zzhhn != null) {
                this.zzhhb = null;
                this.zzhha.zzb(zzdju2);
                return zza(zzdka.zzhhn, zzdko, zzdkp);
            }
            zzdzw<zzdpy<AdT>> zzc = this.zzhha.zzc(zzdju2);
            if (zzc != null) {
                this.zzhhb = (R) ((zzbqv) zzdkp.zzc(zzdko.zzhht).zzagm());
                return zzdzk.zzb(zzc, new zzdjs(this, zzdkp), this.executor);
            }
            this.zzhha.zzb(zzdju2);
            zzdko = new zzdko(zzdko.zzhht, zzdka.zzgoq);
        }
        zzdzw<AdT> zza = this.zzhfm.zza(zzdko, zzdkp);
        this.zzhhb = this.zzhfm.zzaun();
        return zza;
    }
}
