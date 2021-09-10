package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.security.GeneralSecurityException;

final class zzff {
    static zzeat zzzp;

    static boolean zzb(zzfc zzfc) {
        Method zza;
        if (zzzp != null) {
            return true;
        }
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcsg);
        if (str == null || str.length() == 0) {
            str = (zzfc == null || (zza = zzfc.zza("/TbyeKn5BCGoFXpEYkmkevBjYiDI2cU9nEifSIchqqD5aWfWy6v5sZTpifn+5AIL", "PJXTpPH5Q3JP8R736KmmofmTne3UwIW4eaifsKPbWk4=")) == null) ? null : (String) zza.invoke(null, new Object[0]);
            if (str == null) {
                return false;
            }
        }
        try {
            zzebc zzl = zzebg.zzl(zzcy.zzb(str, true));
            for (zzegk zzegk : zzedc.zzicr.zzbfj()) {
                if (zzegk.zzbdx().isEmpty()) {
                    throw new GeneralSecurityException("Missing type_url.");
                } else if (zzegk.zzbef().isEmpty()) {
                    throw new GeneralSecurityException("Missing primitive_name.");
                } else if (zzegk.zzbei().isEmpty()) {
                    throw new GeneralSecurityException("Missing catalogue_name.");
                } else if (!zzegk.zzbei().equals("TinkAead") && !zzegk.zzbei().equals("TinkMac") && !zzegk.zzbei().equals("TinkHybridDecrypt") && !zzegk.zzbei().equals("TinkHybridEncrypt") && !zzegk.zzbei().equals("TinkPublicKeySign") && !zzegk.zzbei().equals("TinkPublicKeyVerify") && !zzegk.zzbei().equals("TinkStreamingAead") && !zzegk.zzbei().equals("TinkDeterministicAead")) {
                    zzeap<?> zzhr = zzebm.zzhr(zzegk.zzbei());
                    zzebm.zza(zzhr.zzbah());
                    zzebm.zza(zzhr.zzb(zzegk.zzbdx(), zzegk.zzbef(), zzegk.zzbeg()), zzegk.zzbeh());
                }
            }
            zzeat zza2 = zzedg.zza(zzl, null);
            zzzp = zza2;
            if (zza2 != null) {
                return true;
            }
            return false;
        } catch (IllegalArgumentException unused) {
        }
    }
}
