package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbqx;

public final class zzcuq extends zzcun<zzblv> {
    private final zzcaq zzezb;
    private final zzbwg zzezg;
    private final zzcxa zzfmf;
    private final ViewGroup zzfum;
    private final zzbts zzfwb;
    private final zzbgc zzguy;
    private final zzbqx.zza zzguz;

    public zzcuq(zzbgc zzbgc, zzbqx.zza zza, zzcxa zzcxa, zzbwg zzbwg, zzcaq zzcaq, zzbts zzbts, ViewGroup viewGroup) {
        this.zzguy = zzbgc;
        this.zzguz = zza;
        this.zzfmf = zzcxa;
        this.zzezg = zzbwg;
        this.zzezb = zzcaq;
        this.zzfwb = zzbts;
        this.zzfum = viewGroup;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcun
    public final zzdzw<zzblv> zza(zzdnp zzdnp, Bundle bundle) {
        return this.zzguy.zzafh().zzd(this.zzguz.zza(zzdnp).zze(bundle).zzalo()).zzd(this.zzezg).zza(this.zzfmf).zzb(this.zzezb).zza(new zzbnq(this.zzfwb)).zzd(new zzblu(this.zzfum)).zzahk().zzagj().zzalb();
    }
}
