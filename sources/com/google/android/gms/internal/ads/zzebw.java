package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzebw extends zzeax<zzeeg> {
    zzebw() {
        super(zzeeg.class, new zzebz(zzeio.class));
    }

    public static void zza(zzeeg zzeeg) {
        zzeiv.zzz(zzeeg.getVersion(), 0);
        zzeiv.zzfu(zzeeg.zzbbe().size());
        zza(zzeeg.zzbbt());
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzeej, com.google.android.gms.internal.ads.zzeeg>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzeeg> zzbao() {
        return new zzeby(this, zzeej.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzeeg zzeeg) {
        zza(zzeeg);
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzeeg zzp(zzejr zzejr) {
        return zzeeg.zzg(zzejr, zzeko.zzbhw());
    }

    /* access modifiers changed from: private */
    public static void zza(zzeek zzeek) {
        if (zzeek.zzbbz() < 12 || zzeek.zzbbz() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }
}
