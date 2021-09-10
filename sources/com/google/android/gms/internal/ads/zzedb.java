package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;

final class zzedb extends zzeba<zzefj, zzefn> {
    private final /* synthetic */ zzecz zzidk;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzedb(zzecz zzecz, Class cls) {
        super(cls);
        this.zzidk = zzecz;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzefj zzefj) {
        zzedh.zza(zzefj.zzbcu());
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefn zze(zzefj zzefj) {
        zzefj zzefj2 = zzefj;
        KeyPair zza = zzehx.zza(zzehx.zza(zzedh.zza(zzefj2.zzbcu().zzbcw().zzbdj())));
        ECPoint w = ((ECPublicKey) zza.getPublic()).getW();
        return (zzefn) ((zzelb) zzefn.zzbdc().zzfe(0).zzb((zzefo) ((zzelb) zzefo.zzbdg().zzff(0).zzc(zzefj2.zzbcu()).zzac(zzejr.zzt(w.getAffineX().toByteArray())).zzad(zzejr.zzt(w.getAffineY().toByteArray())).zzbiw())).zzab(zzejr.zzt(((ECPrivateKey) zza.getPrivate()).getS().toByteArray())).zzbiw());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefj zzr(zzejr zzejr) {
        return zzefj.zzq(zzejr, zzeko.zzbhw());
    }
}
