package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;

final class zzeda extends zzeax<zzefo> {
    public zzeda() {
        super(zzefo.class, new zzedd(zzeat.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.ASYMMETRIC_PUBLIC;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzefo zzefo) {
        zzefo zzefo2 = zzefo;
        zzeiv.zzz(zzefo2.getVersion(), 0);
        zzedh.zza(zzefo2.zzbcu());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzefo zzp(zzejr zzejr) {
        return zzefo.zzs(zzejr, zzeko.zzbhw());
    }
}
