package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;

public final class zzcus extends zzcun<zzbyy> {
    private final zzbwg zzezg;
    private final zzcxa zzfmf;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcus(zzbgc zzbgc, zzbqx.zza zza, zzcxa zzcxa, zzbwg zzbwg) {
        this.zzguy = zzbgc;
        this.zzguz = zza;
        this.zzfmf = zzcxa;
        this.zzezg = zzbwg;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcun
    public final zzdzw<zzbyy> zza(zzdnp zzdnp, Bundle bundle) {
        return this.zzguy.zzafm().zze(this.zzguz.zza(zzdnp).zze(bundle).zzalo()).zze(this.zzezg).zzb(this.zzfmf).zzahx().zzagj().zzalb();
    }
}
