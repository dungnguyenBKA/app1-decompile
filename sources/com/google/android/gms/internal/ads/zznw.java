package com.google.android.gms.internal.ads;

public final class zznw {
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0083  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void zza(long r16, com.google.android.gms.internal.ads.zzpn r18, com.google.android.gms.internal.ads.zzkh[] r19) {
        /*
        // Method dump skipped, instructions count: 153
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznw.zza(long, com.google.android.gms.internal.ads.zzpn, com.google.android.gms.internal.ads.zzkh[]):void");
    }

    private static int zzf(zzpn zzpn) {
        int i = 0;
        while (zzpn.zziv() != 0) {
            int readUnsignedByte = zzpn.readUnsignedByte();
            i += readUnsignedByte;
            if (readUnsignedByte != 255) {
                return i;
            }
        }
        return -1;
    }
}
