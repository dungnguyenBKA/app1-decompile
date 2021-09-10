package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;

public final class zzcuu extends zzcun<zzchb> {
    private final zzbwg zzezg;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcuu(zzbgc zzbgc, zzbqx.zza zza, zzbwg zzbwg) {
        this.zzguy = zzbgc;
        this.zzguz = zza;
        this.zzezg = zzbwg;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcun
    public final zzdzw<zzchb> zza(zzdnp zzdnp, Bundle bundle) {
        return this.zzguy.zzafp().zzf(this.zzguz.zza(zzdnp).zze(bundle).zzalo()).zzf(this.zzezg).zzaid().zzagj().zzalb();
    }
}
