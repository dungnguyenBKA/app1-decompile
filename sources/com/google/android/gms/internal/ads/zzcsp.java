package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;

public final class zzcsp implements zzcrr<zzblv, zzapk, zzctd> {
    private final Context context;
    private View view;
    private final zzbmr zzgto;

    public zzcsp(Context context2, zzbmr zzbmr) {
        this.context = context2;
        this.zzgto = zzbmr;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        try {
            zzcrl.zzdnl.zzdm(zzdmw.zzdoq);
            zzcrl.zzdnl.zza(zzdmw.zzeuo, zzdmw.zzhjj.toString(), zzdnl.zzhkr.zzfwy.zzhkw, aw.Q(this.context), new zzcsu(this, zzcrl), (zzank) zzcrl.zzgsu, zzdnl.zzhkr.zzfwy.zzbpo);
        } catch (RemoteException e) {
            throw new zzdnt(e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzdnl, com.google.android.gms.internal.ads.zzdmw, com.google.android.gms.internal.ads.zzcrl] */
    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzblv zzb(zzdnl zzdnl, zzdmw zzdmw, zzcrl<zzapk, zzctd> zzcrl) {
        zzbly zza = this.zzgto.zza(new zzboj(zzdnl, zzdmw, zzcrl.zzcio), new zzbmc(this.view, null, new zzcss(zzcrl), zzdmw.zzhji.get(0)));
        zza.zzahp().zzv(this.view);
        ((zzctd) zzcrl.zzgsu).zzb(zza.zzagt());
        return zza.zzaho();
    }

    static final /* synthetic */ zzzc zza(zzcrl zzcrl) {
        try {
            return zzcrl.zzdnl.getVideoController();
        } catch (RemoteException e) {
            throw new zzdnt(e);
        }
    }
}
