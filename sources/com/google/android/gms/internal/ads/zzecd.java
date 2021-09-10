package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

final class zzecd extends zzeba<zzeeo, zzeen> {
    private final /* synthetic */ zzecb zzicx;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzecd(zzecb zzecb, Class cls) {
        super(cls);
        this.zzicx = zzecb;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeeo zzeeo) {
        zzeeo zzeeo2 = zzeeo;
        zzeiv.zzfu(zzeeo2.getKeySize());
        if (zzeeo2.zzbcc().zzbbz() != 12 && zzeeo2.zzbcc().zzbbz() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeen zze(zzeeo zzeeo) {
        zzeeo zzeeo2 = zzeeo;
        return (zzeen) ((zzelb) zzeen.zzbcd().zzv(zzejr.zzt(zzeiu.zzft(zzeeo2.getKeySize()))).zzb(zzeeo2.zzbcc()).zzez(0).zzbiw());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeeo zzr(zzejr zzejr) {
        return zzeeo.zzj(zzejr, zzeko.zzbhw());
    }
}
