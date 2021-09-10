package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.io.File;

public final class zzdur {
    public static File zza(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(zza(str, file), str2);
    }

    public static boolean zze(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            z = true;
            for (int i = 0; i < length; i++) {
                File file2 = listFiles[i];
                z = file2 != null && zze(file2) && z;
            }
        } else {
            z = true;
        }
        if (!file.delete() || !z) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0018 A[SYNTHETIC, Splitter:B:13:0x0018] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x001f A[SYNTHETIC, Splitter:B:21:0x001f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] zzf(java.io.File r2) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x001c, all -> 0x0015 }
            r1.<init>(r2)     // Catch:{ IOException -> 0x001c, all -> 0x0015 }
            com.google.android.gms.internal.ads.zzejr r2 = com.google.android.gms.internal.ads.zzejr.zzf(r1)     // Catch:{ IOException -> 0x001d, all -> 0x0012 }
            byte[] r2 = r2.toByteArray()     // Catch:{ IOException -> 0x001d, all -> 0x0012 }
            r1.close()     // Catch:{ IOException -> 0x0011 }
        L_0x0011:
            return r2
        L_0x0012:
            r2 = move-exception
            r0 = r1
            goto L_0x0016
        L_0x0015:
            r2 = move-exception
        L_0x0016:
            if (r0 == 0) goto L_0x001b
            r0.close()     // Catch:{ IOException -> 0x001b }
        L_0x001b:
            throw r2
        L_0x001c:
            r1 = r0
        L_0x001d:
            if (r1 == 0) goto L_0x0022
            r1.close()     // Catch:{ IOException -> 0x0022 }
        L_0x0022:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdur.zzf(java.io.File):byte[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0019 A[SYNTHETIC, Splitter:B:14:0x0019] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x001f A[SYNTHETIC, Splitter:B:20:0x001f] */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean zza(java.io.File r2, byte[] r3) {
        /*
            r0 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x001d, all -> 0x0016 }
            r1.<init>(r2)     // Catch:{ IOException -> 0x001d, all -> 0x0016 }
            r1.write(r3)     // Catch:{ IOException -> 0x0014, all -> 0x0011 }
            r1.flush()     // Catch:{ IOException -> 0x0014, all -> 0x0011 }
            r1.close()     // Catch:{ IOException -> 0x000f }
        L_0x000f:
            r2 = 1
            return r2
        L_0x0011:
            r2 = move-exception
            r0 = r1
            goto L_0x0017
        L_0x0014:
            r0 = r1
            goto L_0x001d
        L_0x0016:
            r2 = move-exception
        L_0x0017:
            if (r0 == 0) goto L_0x001c
            r0.close()     // Catch:{ IOException -> 0x001c }
        L_0x001c:
            throw r2
        L_0x001d:
            if (r0 == 0) goto L_0x0022
            r0.close()     // Catch:{ IOException -> 0x0022 }
        L_0x0022:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdur.zza(java.io.File, byte[]):boolean");
    }

    public static File zza(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return zza(new File(file, str), false);
    }

    public static File zza(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
