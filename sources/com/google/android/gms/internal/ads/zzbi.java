package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;

public final class zzbi {
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0033 A[SYNTHETIC, Splitter:B:18:0x0033] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static byte[] zza(java.io.InputStream r5, int r6, com.google.android.gms.internal.ads.zzat r7) {
        /*
            java.lang.String r0 = "Error occurred when closing InputStream"
            com.google.android.gms.internal.ads.zzbh r1 = new com.google.android.gms.internal.ads.zzbh
            r1.<init>(r7, r6)
            r6 = 1024(0x400, float:1.435E-42)
            r2 = 0
            byte[] r6 = r7.zzf(r6)     // Catch:{ all -> 0x002f }
        L_0x000e:
            int r3 = r5.read(r6)     // Catch:{ all -> 0x002d }
            r4 = -1
            if (r3 == r4) goto L_0x0019
            r1.write(r6, r2, r3)     // Catch:{ all -> 0x002d }
            goto L_0x000e
        L_0x0019:
            byte[] r3 = r1.toByteArray()     // Catch:{ all -> 0x002d }
            r5.close()     // Catch:{ IOException -> 0x0021 }
            goto L_0x0026
        L_0x0021:
            java.lang.Object[] r5 = new java.lang.Object[r2]
            com.google.android.gms.internal.ads.zzao.v(r0, r5)
        L_0x0026:
            r7.zza(r6)
            r1.close()
            return r3
        L_0x002d:
            r3 = move-exception
            goto L_0x0031
        L_0x002f:
            r3 = move-exception
            r6 = 0
        L_0x0031:
            if (r5 == 0) goto L_0x003c
            r5.close()     // Catch:{ IOException -> 0x0037 }
            goto L_0x003c
        L_0x0037:
            java.lang.Object[] r5 = new java.lang.Object[r2]
            com.google.android.gms.internal.ads.zzao.v(r0, r5)
        L_0x003c:
            r7.zza(r6)
            r1.close()
            goto L_0x0044
        L_0x0043:
            throw r3
        L_0x0044:
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbi.zza(java.io.InputStream, int, com.google.android.gms.internal.ads.zzat):byte[]");
    }

    private static void zza(String str, zzab<?> zzab, zzap zzap) {
        zzak zzj = zzab.zzj();
        int zzi = zzab.zzi();
        try {
            zzj.zza(zzap);
            zzab.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzi)));
        } catch (zzap e) {
            zzab.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzi)));
            throw e;
        }
    }

    static void zza(zzab<?> zzab, IOException iOException, long j, zzbb zzbb, byte[] bArr) {
        if (iOException instanceof SocketTimeoutException) {
            zza("socket", zzab, new zzam());
        } else if (iOException instanceof MalformedURLException) {
            String valueOf = String.valueOf(zzab.getUrl());
            throw new RuntimeException(valueOf.length() != 0 ? "Bad URL ".concat(valueOf) : new String("Bad URL "), iOException);
        } else if (zzbb != null) {
            int statusCode = zzbb.getStatusCode();
            zzao.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), zzab.getUrl());
            if (bArr != null) {
                zzz zzz = new zzz(statusCode, bArr, false, SystemClock.elapsedRealtime() - j, zzbb.zzq());
                if (statusCode == 401 || statusCode == 403) {
                    zza("auth", zzab, new zzl(zzz));
                } else if (statusCode >= 400 && statusCode <= 499) {
                    throw new zzo(zzz);
                } else if (statusCode < 500 || statusCode > 599) {
                    throw new zzan(zzz);
                } else {
                    throw new zzan(zzz);
                }
            } else {
                zza("network", zzab, new zzw());
            }
        } else {
            throw new zzy(iOException);
        }
    }
}
