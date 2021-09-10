package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.g;
import java.io.File;

public final class zzdus {
    private final SharedPreferences zzcme;
    private final File zzhuk;
    private final File zzhul;
    private final zzgp zzvu;

    public zzdus(Context context, zzgp zzgp) {
        this.zzcme = context.getSharedPreferences("pcvmspf", 0);
        this.zzhuk = zzdur.zza(context.getDir("pccache", 0), false);
        this.zzhul = zzdur.zza(context.getDir("tmppccache", 0), true);
        this.zzvu = zzgp;
    }

    private final File zzayr() {
        File file = new File(this.zzhuk, Integer.toString(this.zzvu.zzv()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zzays() {
        return ic.C(17, "FBAMTD", this.zzvu.zzv());
    }

    private final String zzayt() {
        return ic.C(17, "LATMTD", this.zzvu.zzv());
    }

    private final zzgv zzej(int i) {
        String str;
        if (i == zzdva.zzhut) {
            str = this.zzcme.getString(zzayt(), null);
        } else {
            str = i == zzdva.zzhuu ? this.zzcme.getString(zzays(), null) : null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            zzgv zzl = zzgv.zzl(zzejr.zzt(g.c(str)));
            String zzdg = zzl.zzdg();
            File zza = zzdur.zza(zzdg, "pcam.jar", zzayr());
            if (!zza.exists()) {
                zza = zzdur.zza(zzdg, "pcam", zzayr());
            }
            if (zza.exists() && zzdur.zza(zzdg, "pcbc", zzayr()).exists()) {
                return zzl;
            }
            return null;
        } catch (zzelo unused) {
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0140, code lost:
        if (r0.commit() != false) goto L_0x0144;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x005c A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0172  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zza(com.google.android.gms.internal.ads.zzgr r9, com.google.android.gms.internal.ads.zzduy r10) {
        /*
        // Method dump skipped, instructions count: 397
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdus.zza(com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzduy):boolean");
    }

    public final zzdup zzp(int i) {
        zzgv zzej = zzej(i);
        if (zzej == null) {
            return null;
        }
        String zzdg = zzej.zzdg();
        File zza = zzdur.zza(zzdg, "pcam.jar", zzayr());
        if (!zza.exists()) {
            zza = zzdur.zza(zzdg, "pcam", zzayr());
        }
        return new zzdup(zzej, zza, zzdur.zza(zzdg, "pcbc", zzayr()), zzdur.zza(zzdg, "pcopt", zzayr()));
    }

    private static String zza(zzgv zzgv) {
        return g.a(zzgv.zzbfz().toByteArray());
    }
}
