package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzap;

public final class zzdok {
    public static zzvg zza(zzdom zzdom, zzvg zzvg) {
        if (zzdom.equals(zzdom.MEDIATION_SHOW_ERROR)) {
            if (((Integer) zzwr.zzqr().zzd(zzabp.zzczy)).intValue() > 0) {
                return zzvg;
            }
        }
        return zza(zzdom, null, zzvg);
    }

    public static zzvg zzh(Throwable th) {
        if (th instanceof zzcrn) {
            zzcrn zzcrn = (zzcrn) th;
            return zza(zzcrn.zzarh(), zzcrn.zzary());
        } else if (th instanceof zzcmb) {
            if (th.getMessage() == null) {
                return zza(((zzcmb) th).zzarh(), null, null);
            }
            return zza(((zzcmb) th).zzarh(), th.getMessage(), null);
        } else if (!(th instanceof zzap)) {
            return zza(zzdom.INTERNAL_ERROR, null, null);
        } else {
            zzap zzap = (zzap) th;
            return new zzvg(zzap.getErrorCode(), zzdwt.zzhm(zzap.getMessage()), MobileAds.ERROR_DOMAIN, null, null);
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x008d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.ads.zzvg zza(com.google.android.gms.internal.ads.zzdom r6, java.lang.String r7, com.google.android.gms.internal.ads.zzvg r8) {
        /*
        // Method dump skipped, instructions count: 210
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdok.zza(com.google.android.gms.internal.ads.zzdom, java.lang.String, com.google.android.gms.internal.ads.zzvg):com.google.android.gms.internal.ads.zzvg");
    }

    public static zzvg zza(Throwable th, zzcrq zzcrq) {
        zzvg zzvg;
        zzvg zzh = zzh(th);
        int i = zzh.errorCode;
        if ((i == 3 || i == 0) && (zzvg = zzh.zzchi) != null && !zzvg.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
            zzh.zzchi = null;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue() && zzcrq != null) {
            zzh.zzchj = zzcrq.zzasa();
        }
        return zzh;
    }
}
