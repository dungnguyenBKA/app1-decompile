package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcvy implements zzcrr<zzchb, zzdog, zzctg> {
    private final Context context;
    private final Executor zzfsj;
    private final zzchi zzgvn;

    public zzcvy(Context context2, Executor executor, zzchi zzchi) {
        this.context = context2;
        this.zzfsj = executor;
        this.zzgvn = zzchi;
    }

    /* access modifiers changed from: private */
    public static void zzc(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctg> zzcrl) {
        try {
            zzcrl.zzdnl.zza(zzdnl.zzhkr.zzfwy.zzhkw, zzdmw.zzhjj.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcrl.zzcio);
            zzazk.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctg> zzcrl) {
        if (!zzcrl.zzdnl.isInitialized()) {
            ((zzctg) zzcrl.zzgsu).zza(new zzcwa(this, zzdnl, zzdmw, zzcrl));
            zzcrl.zzdnl.zza(this.context, zzdnl.zzhkr.zzfwy.zzhkw, null, (zzavf) zzcrl.zzgsu, zzdmw.zzhjj.toString());
            return;
        }
        zzc(zzdnl, zzdmw, zzcrl);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzchb zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzdog, zzctg> zzcrl) {
        zzchd zza = this.zzgvn.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzchg(new zzcvx(zzcrl)));
        zza.zzagn().zza(new zzbjo(zzcrl.zzdnl), this.zzfsj);
        zzbsm zzago = zza.zzago();
        zzbrl zzagp = zza.zzagp();
        ((zzctg) zzcrl.zzgsu).zza(new zzcwc(this, zza.zzaia(), zzagp, zzago, zza.zzaih()));
        return zza.zzaig();
    }
}
