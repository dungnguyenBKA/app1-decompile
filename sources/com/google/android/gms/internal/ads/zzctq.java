package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.concurrent.Executor;

public final class zzctq implements zzcrr<zzbyy, zzdog, zzctd> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzbzy zzgtz;

    public zzctq(Context context2, zzazn zzazn, zzbzy zzbzy, Executor executor) {
        this.context = context2;
        this.zzboz = zzazn;
        this.zzgtz = zzbzy;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        if (this.zzboz.zzehz < 4100000) {
            zzcrl.zzdnl.zza(this.context, zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString(), (zzank) zzcrl.zzgsu);
        } else {
            zzcrl.zzdnl.zza(this.context, zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString(), zzbh.zza(zzdmw.zzhjg), (zzank) zzcrl.zzgsu);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzbyy zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzbza zza = this.zzgtz.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzbyz(new zzctp(zzcrl)));
        zza.zzagn().zza(new zzbjo(zzcrl.zzdnl), this.zzfsj);
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzags());
        return zza.zzahz();
    }
}
