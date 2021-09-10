package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;

public final class zzbqf implements zzbua {
    private final Context zzaad;
    private final zzazn zzboz;
    private final zzf zzedg;
    private final zzclq zzfqm;
    private final zzdnp zzfwy;

    public zzbqf(Context context, zzdnp zzdnp, zzazn zzazn, zzf zzf, zzclq zzclq) {
        this.zzaad = context;
        this.zzfwy = zzdnp;
        this.zzboz = zzazn;
        this.zzedg = zzf;
        this.zzfqm = zzclq;
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue()) {
            zzr.zzkz().zza(this.zzaad, this.zzboz, this.zzfwy.zzhkx, this.zzedg.zzyn());
        }
        this.zzfqm.zzarb();
    }
}
