package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.zza;
import java.util.concurrent.Executor;

public final class zzcso implements zzcrr<zzblv, zzdog, zzctd> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzbmr zzgto;

    public zzcso(Context context2, zzazn zzazn, zzbmr zzbmr, Executor executor) {
        this.context = context2;
        this.zzboz = zzazn;
        this.zzgto = zzbmr;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzvs zzvs;
        zzvs zzvs2 = zzdnl.zzhkr.zzfwy.zzbpo;
        if (zzvs2.zzcin) {
            zzvs = new zzvs(this.context, zza.zza(zzvs2.width, zzvs2.height));
        } else {
            zzvs = zzdnu.zzb(this.context, zzdmw.zzhji);
        }
        if (this.zzboz.zzehz < 4100000) {
            zzcrl.zzdnl.zza(this.context, zzvs, zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString(), (zzank) zzcrl.zzgsu);
        } else {
            zzcrl.zzdnl.zza(this.context, zzvs, zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString(), zzbh.zza(zzdmw.zzhjg), (zzank) zzcrl.zzgsu);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzblv zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctd> zzcrl) {
        zzbmr zzbmr = this.zzgto;
        zzboj zzboj = new zzboj(zzdnl, zzdmw, zzcrl.zzcio);
        View view = zzcrl.zzdnl.getView();
        AdapterT adaptert = zzcrl.zzdnl;
        adaptert.getClass();
        zzbly zza = zzbmr.zza(zzboj, new zzbmc(view, null, zzcsn.zza(adaptert), zzdmw.zzhji.get(0)));
        zza.zzahp().zzv(zzcrl.zzdnl.getView());
        zza.zzagn().zza(new zzbjo(zzcrl.zzdnl), this.zzfsj);
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzags());
        return zza.zzaho();
    }
}
