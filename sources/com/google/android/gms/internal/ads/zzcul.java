package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqx;

public final class zzcul extends zzcun<zzbnz> {
    private final zzcaq zzezb;
    private final zzbwg zzezg;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcul(zzbgc zzbgc, zzcaq zzcaq, zzbqx.zza zza, zzbwg zzbwg) {
        this.zzguy = zzbgc;
        this.zzezb = zzcaq;
        this.zzguz = zza;
        this.zzezg = zzbwg;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcun
    public final zzdzw<zzbnz> zza(zzdnp zzdnp, Bundle bundle) {
        return this.zzguy.zzafo().zza(this.zzguz.zza(zzdnp).zze(bundle).zzalo()).zza(this.zzezg).zza(this.zzezb).zza(new zzblu(null)).zzagl().zzagj().zzalb();
    }
}
