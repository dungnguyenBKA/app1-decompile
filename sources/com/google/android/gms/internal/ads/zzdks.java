package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdks implements zzeqb<zzdkn<zzchi, zzchb>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdov> zzeyu;
    private final zzeqo<zzdpq> zzeyv;

    public zzdks(zzeqo<Context> zzeqo, zzeqo<zzdov> zzeqo2, zzeqo<zzdpq> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzeyu = zzeqo2;
        this.zzeyv = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Object obj;
        Context context = this.zzewk.get();
        zzdov zzdov = this.zzeyu.get();
        zzdpq zzdpq = this.zzeyv.get();
        if (((Integer) zzwr.zzqr().zzd(zzabp.zzcye)).intValue() > 0) {
            zzdpp zza = zzdpq.zza(zzdpi.Rewarded, context, zzdov, new zzdjv(new zzdjm()));
            zzdke zzdke = new zzdke(new zzdkf());
            zzdpc zzdpc = zza.zzhhi;
            zzdzv zzdzv = zzazp.zzeic;
            obj = new zzdjr(zzdke, new zzdjw(zzdpc, zzdzv), zza.zzhol, zzdzv);
        } else {
            obj = new zzdkf();
        }
        return (zzdkn) zzeqh.zza(obj, "Cannot return null from a non-@Nullable @Provides method");
    }
}
