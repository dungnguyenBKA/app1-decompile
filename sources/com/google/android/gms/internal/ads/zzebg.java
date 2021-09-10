package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzegl;
import java.security.GeneralSecurityException;

@Deprecated
public final class zzebg {
    @Deprecated
    public static final zzebc zzl(byte[] bArr) {
        try {
            zzegl zzc = zzegl.zzc(bArr, zzeko.zzbhw());
            for (zzegl.zzb zzb : zzc.zzbel()) {
                if (zzb.zzbep().zzbdz() == zzegd.zza.UNKNOWN_KEYMATERIAL || zzb.zzbep().zzbdz() == zzegd.zza.SYMMETRIC || zzb.zzbep().zzbdz() == zzegd.zza.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzebc.zza(zzc);
        } catch (zzelo unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
