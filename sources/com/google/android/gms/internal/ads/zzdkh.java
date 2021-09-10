package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
import java.util.concurrent.Executor;

final class zzdkh<R extends zzbqv<? extends zzbnt>> {
    private final Executor executor;
    private final zzdkp<R> zzhhe;
    private final zzdpc zzhhi;
    private final zzdkm zzhhp;
    private zzdkl zzhhq;

    public zzdkh(zzdpc zzdpc, zzdkm zzdkm, zzdkp<R> zzdkp, Executor executor2) {
        this.zzhhi = zzdpc;
        this.zzhhp = zzdkm;
        this.zzhhe = zzdkp;
        this.executor = executor2;
    }

    /* access modifiers changed from: private */
    @Deprecated
    public final zzdpl zzaut() {
        zzdnp zzahg = this.zzhhe.zzc(this.zzhhp).zzagm().zzahg();
        return this.zzhhi.zza(zzahg.zzhkw, zzahg.zzhkx, zzahg.zzhla);
    }

    public final zzdzw<zzdkl> zzaus() {
        zzdzw zzdzw;
        zzdkl zzdkl = this.zzhhq;
        if (zzdkl != null) {
            return zzdzk.zzag(zzdkl);
        }
        if (!zzadm.zzdef.get().booleanValue()) {
            zzdkl zzdkl2 = new zzdkl(null, zzaut(), null);
            this.zzhhq = zzdkl2;
            zzdzw = zzdzk.zzag(zzdkl2);
        } else {
            zzdzw = zzdzf.zzg(this.zzhhe.zzc(this.zzhhp).zza(new zzdjx(this.zzhhi.zzavw().zzhnq)).zzagm().zzagj().zza(this.zzhhi.zzavw())).zza(new zzdki(this), this.executor).zza(zzcoc.class, new zzdkj(this), this.executor);
        }
        return zzdzk.zzb(zzdzw, zzdkg.zzeaj, this.executor);
    }
}
