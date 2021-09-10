package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public final class zzech extends zzeax<zzeew> {
    zzech() {
        super(zzeew.class, new zzecg(zzeaq.class));
    }

    private static boolean zzbbb() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }

    public static void zzbq(boolean z) {
        if (zzbbb()) {
            zzebm.zza((zzeax) new zzech(), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzeez, com.google.android.gms.internal.ads.zzeew>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzeew> zzbao() {
        return new zzecj(this, zzeez.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzeew zzeew) {
        zzeew zzeew2 = zzeew;
        zzeiv.zzz(zzeew2.getVersion(), 0);
        zzeiv.zzfu(zzeew2.zzbbe().size());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzeew zzp(zzejr zzejr) {
        return zzeew.zzm(zzejr, zzeko.zzbhw());
    }
}
