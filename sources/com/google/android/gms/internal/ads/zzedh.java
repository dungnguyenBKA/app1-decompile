package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

final class zzedh {
    public static void zza(zzefk zzefk) {
        zzehx.zza(zza(zzefk.zzbcw().zzbdj()));
        zza(zzefk.zzbcw().zzbdk());
        if (zzefk.zzbcy() != zzefe.UNKNOWN_FORMAT) {
            zzebm.zza(zzefk.zzbcx().zzbcr());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    public static String zza(zzeft zzeft) {
        int i = zzedk.zzidt[zzeft.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
        if (i == 2) {
            return "HmacSha256";
        }
        if (i == 3) {
            return "HmacSha512";
        }
        String valueOf = String.valueOf(zzeft);
        throw new NoSuchAlgorithmException(ic.d(valueOf.length() + 27, "hash unsupported for HMAC: ", valueOf));
    }

    public static zzehz zza(zzefs zzefs) {
        int i = zzedk.zzidu[zzefs.ordinal()];
        if (i == 1) {
            return zzehz.NIST_P256;
        }
        if (i == 2) {
            return zzehz.NIST_P384;
        }
        if (i == 3) {
            return zzehz.NIST_P521;
        }
        String valueOf = String.valueOf(zzefs);
        throw new GeneralSecurityException(ic.d(valueOf.length() + 20, "unknown curve type: ", valueOf));
    }

    public static zzeic zza(zzefe zzefe) {
        int i = zzedk.zzidv[zzefe.ordinal()];
        if (i == 1) {
            return zzeic.UNCOMPRESSED;
        }
        if (i == 2) {
            return zzeic.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i == 3) {
            return zzeic.COMPRESSED;
        }
        String valueOf = String.valueOf(zzefe);
        throw new GeneralSecurityException(ic.d(valueOf.length() + 22, "unknown point format: ", valueOf));
    }
}
