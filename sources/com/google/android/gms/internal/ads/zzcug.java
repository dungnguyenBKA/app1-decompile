package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.concurrent.Executor;

public final class zzcug implements zzcrr<zzcbu, zzdog, zzctd> {
    private final Context context;
    private final Executor zzfsj;
    private final zzcau zzgun;

    public zzcug(Context context2, zzcau zzcau, Executor executor) {
        this.context = context2;
        this.zzgun = zzcau;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzdnp zzdnp = zzdnl.zzhkr.zzfwy;
        zzcrl.zzdnl.zza(this.context, zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString(), zzbh.zza(zzdmw.zzhjg), (zzank) zzcrl.zzgsu, zzdnp.zzdoe, zzdnp.zzhky);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzcbu zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzccd zzccd;
        zzanr zzuv = zzcrl.zzdnl.zzuv();
        zzans zzuw = zzcrl.zzdnl.zzuw();
        zzanx zzvb = zzcrl.zzdnl.zzvb();
        if (zzvb != null && zza(zzdnl, 6)) {
            zzccd = zzccd.zzb(zzvb);
        } else if (zzuv != null && zza(zzdnl, 6)) {
            zzccd = zzccd.zzb(zzuv);
        } else if (zzuv != null && zza(zzdnl, 2)) {
            zzccd = zzccd.zza(zzuv);
        } else if (zzuw != null && zza(zzdnl, 6)) {
            zzccd = zzccd.zzb(zzuw);
        } else if (zzuw == null || !zza(zzdnl, 1)) {
            throw new zzcva(zzdom.INTERNAL_ERROR, "No native ad mappers");
        } else {
            zzccd = zzccd.zza(zzuw);
        }
        if (zzdnl.zzhkr.zzfwy.zzhky.contains(Integer.toString(zzccd.zzanu()))) {
            zzcci zza = this.zzgun.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzccp(zzccd), new zzcee(zzuw, zzuv, zzvb));
            ((zzctd) zzcrl.zzgsu).zzb(zza.zzags());
            zza.zzagn().zza(new zzbjo(zzcrl.zzdnl), this.zzfsj);
            return zza.zzagu();
        }
        throw new zzcva(zzdom.INTERNAL_ERROR, "No corresponding native ad listener");
    }

    private static boolean zza(zzdnl zzdnl, int i) {
        return zzdnl.zzhkr.zzfwy.zzhky.contains(Integer.toString(i));
    }
}
