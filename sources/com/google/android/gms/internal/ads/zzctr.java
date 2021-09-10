package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

public final class zzctr implements zzcrr<zzbyy, zzapk, zzctd> {
    private final Context context;
    private final zzbzy zzgtz;

    public zzctr(Context context2, zzbzy zzbzy) {
        this.context = context2;
        this.zzgtz = zzbzy;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        try {
            zzcrl.zzdnl.zzdm(zzdmw.zzdoq);
            zzcrl.zzdnl.zza(zzdmw.zzeuo, zzdmw.zzhjj.toString(), zzdnl.zzhkr.zzfwy.zzhkw, aw.Q(this.context), new zzctt(this, zzcrl), (zzank) zzcrl.zzgsu);
        } catch (RemoteException e) {
            throw new zzdnt(e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzbyy zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        zzctn zzctn = new zzctn(zzdmw, zzcrl.zzdnl, false);
        zzbza zza = this.zzgtz.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzbyz(zzctn));
        zzctn.zza(zza.zzagq());
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzagt());
        return zza.zzahz();
    }
}
