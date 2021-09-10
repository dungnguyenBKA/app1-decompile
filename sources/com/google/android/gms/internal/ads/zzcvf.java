package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;

public final class zzcvf implements zzcrr<zzchb, zzapk, zzctd> {
    private final Context context;
    private final zzchi zzgvn;

    public zzcvf(Context context2, zzchi zzchi) {
        this.context = context2;
        this.zzgvn = zzchi;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        try {
            zzcrl.zzdnl.zzdm(zzdmw.zzdoq);
            if (zzdnl.zzhkr.zzfwy.zzhle.zzhki == zzdnh.zzhkm) {
                zzcrl.zzdnl.zzb(zzdmw.zzeuo, zzdmw.zzhjj.toString(), zzdnl.zzhkr.zzfwy.zzhkw, aw.Q(this.context), new zzcvh(this, zzcrl), (zzank) zzcrl.zzgsu);
            } else {
                zzcrl.zzdnl.zza(zzdmw.zzeuo, zzdmw.zzhjj.toString(), zzdnl.zzhkr.zzfwy.zzhkw, aw.Q(this.context), new zzcvh(this, zzcrl), (zzank) zzcrl.zzgsu);
            }
        } catch (RemoteException e) {
            zzd.zza("Remote exception loading a rewarded RTB ad", e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzchb zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        zzctn zzctn = new zzctn(zzdmw, zzcrl.zzdnl, true);
        zzchd zza = this.zzgvn.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzchg(zzctn));
        zzctn.zza(zza.zzagq());
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzaij());
        return zza.zzaig();
    }
}
