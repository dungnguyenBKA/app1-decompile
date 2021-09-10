package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzecb extends zzeax<zzeen> {
    zzecb() {
        super(zzeen.class, new zzeca(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzeeo, com.google.android.gms.internal.ads.zzeen>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzeen> zzbao() {
        return new zzecd(this, zzeeo.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzeen zzeen) {
        zzeen zzeen2 = zzeen;
        zzeiv.zzz(zzeen2.getVersion(), 0);
        zzeiv.zzfu(zzeen2.zzbbe().size());
        if (zzeen2.zzbcc().zzbbz() != 12 && zzeen2.zzbcc().zzbbz() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzeen zzp(zzejr zzejr) {
        return zzeen.zzi(zzejr, zzeko.zzbhw());
    }
}
