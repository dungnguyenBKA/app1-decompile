package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcve implements zzcrr<zzchb, zzdog, zzctd> {
    private final Context context;
    private final Executor zzfsj;
    private final zzchi zzgvn;

    public zzcve(Context context2, Executor executor, zzchi zzchi) {
        this.context = context2;
        this.zzfsj = executor;
        this.zzgvn = zzchi;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        try {
            zzdnp zzdnp = zzdnl.zzhkr.zzfwy;
            if (zzdnp.zzhle.zzhki == zzdnh.zzhkm) {
                zzcrl.zzdnl.zzc(this.context, zzdnp.zzhkw, zzdmw.zzhjj.toString(), (zzank) zzcrl.zzgsu);
            } else {
                zzcrl.zzdnl.zzb(this.context, zzdnp.zzhkw, zzdmw.zzhjj.toString(), (zzank) zzcrl.zzgsu);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcrl.zzcio);
            zzazk.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzchb zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzchd zza = this.zzgvn.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzchg(new zzcvd(zzcrl)));
        zza.zzagn().zza(new zzbjo(zzcrl.zzdnl), this.zzfsj);
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzaii());
        return zza.zzaig();
    }
}
