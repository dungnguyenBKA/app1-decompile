package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzegl;
import com.google.android.gms.internal.ads.zzego;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import org.apache.http.protocol.HTTP;

final class zzebq {
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);

    public static zzego zzb(zzegl zzegl) {
        zzego.zzb zzfn = zzego.zzbes().zzfn(zzegl.zzbek());
        for (zzegl.zzb zzb : zzegl.zzbel()) {
            zzfn.zzb((zzego.zza) ((zzelb) zzego.zza.zzbeu().zzhv(zzb.zzbep().zzbdx()).zzb(zzb.zzbau()).zzb(zzb.zzbav()).zzfo(zzb.zzbeq()).zzbiw()));
        }
        return (zzego) ((zzelb) zzfn.zzbiw());
    }

    public static void zzc(zzegl zzegl) {
        int zzbek = zzegl.zzbek();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzegl.zzb zzb : zzegl.zzbel()) {
            if (zzb.zzbau() == zzege.ENABLED) {
                if (!zzb.zzbeo()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzb.zzbeq())));
                } else if (zzb.zzbav() == zzegx.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzb.zzbeq())));
                } else if (zzb.zzbau() != zzege.UNKNOWN_STATUS) {
                    if (zzb.zzbeq() == zzbek) {
                        if (!z) {
                            z = true;
                        } else {
                            throw new GeneralSecurityException("keyset contains multiple primary keys");
                        }
                    }
                    if (zzb.zzbep().zzbdz() != zzegd.zza.ASYMMETRIC_PUBLIC) {
                        z2 = false;
                    }
                    i++;
                } else {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzb.zzbeq())));
                }
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        } else if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
