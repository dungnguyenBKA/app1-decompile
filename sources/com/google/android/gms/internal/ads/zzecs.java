package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzecs extends zzeax<zzehc> {
    zzecs() {
        super(zzehc.class, new zzecv(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzehd, com.google.android.gms.internal.ads.zzehc>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzehc> zzbao() {
        return new zzecu(this, zzehd.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzehc zzehc) {
        zzehc zzehc2 = zzehc;
        zzeiv.zzz(zzehc2.getVersion(), 0);
        if (zzehc2.zzbbe().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzehc zzp(zzejr zzejr) {
        return zzehc.zzz(zzejr, zzeko.zzbhw());
    }
}
