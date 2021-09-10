package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

public final class zzcui implements zzcrr<zzcbu, zzapk, zzctd> {
    private final Context context;
    private final zzcau zzgun;
    private zzanx zzguw;

    public zzcui(Context context2, zzcau zzcau) {
        this.context = context2;
        this.zzgun = zzcau;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        try {
            zzcrl.zzdnl.zzdm(zzdmw.zzdoq);
            zzcrl.zzdnl.zza(zzdmw.zzeuo, zzdmw.zzhjj.toString(), zzdnl.zzhkr.zzfwy.zzhkw, aw.Q(this.context), new zzcuk(this, zzcrl), (zzank) zzcrl.zzgsu);
        } catch (RemoteException e) {
            throw new zzdnt(e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzcbu zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        if (zzdnl.zzhkr.zzfwy.zzhky.contains(Integer.toString(6))) {
            zzccd zzb = zzccd.zzb(this.zzguw);
            if (zzdnl.zzhkr.zzfwy.zzhky.contains(Integer.toString(zzb.zzanu()))) {
                zzcci zza = this.zzgun.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzccp(zzb), new zzcee(null, null, this.zzguw));
                ((zzctd) zzcrl.zzgsu).zzb(zza.zzagt());
                return zza.zzagu();
            }
            throw new zzcva(zzdom.INTERNAL_ERROR, "No corresponding native ad listener");
        }
        throw new zzcva(zzdom.INVALID_REQUEST, "Unified must be used for RTB.");
    }
}
