package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

public final class zzcxe implements zzcwy<zzbyy> {
    private final Context context;
    private final zzbzy zzgtz;

    public zzcxe(Context context2, zzbzy zzbzy) {
        this.context = context2;
        this.zzgtz = zzbzy;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzcwy
    public final /* synthetic */ zzbyy zza(zzdnl zzdnl, zzdmw zzdmw, View view, zzcxb zzcxb) {
        zzbza zza = this.zzgtz.zza(new zzboj(zzdnl, zzdmw, null), new zzcxg(this, zzcxd.zzgxf));
        zzcxb.zza(new zzcxf(this, zza));
        return zza.zzahz();
    }
}
