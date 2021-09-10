package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;

public final class zzebv extends zzeax<zzeec> {
    zzebv() {
        super(zzeec.class, new zzebu(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzeef, com.google.android.gms.internal.ads.zzeec>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzeec> zzbao() {
        return new zzebx(this, zzeef.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzeec zzeec) {
        zzeec zzeec2 = zzeec;
        zzeiv.zzz(zzeec2.getVersion(), 0);
        new zzebw();
        zzebw.zza(zzeec2.zzbbm());
        new zzedn();
        zzedn.zza(zzeec2.zzbbn());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzeec zzp(zzejr zzejr) {
        return zzeec.zze(zzejr, zzeko.zzbhw());
    }
}
