package com.google.android.gms.internal.ads;

import android.util.Pair;

public final class zzpf {
    private static final byte[] zzbjt = {0, 0, 0, 1};
    private static final int[] zzbju = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzbjv = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private static int zza(zzpo zzpo) {
        int zzbl = zzpo.zzbl(5);
        return zzbl == 31 ? zzpo.zzbl(6) + 32 : zzbl;
    }

    private static int zzb(zzpo zzpo) {
        int zzbl = zzpo.zzbl(4);
        if (zzbl == 15) {
            return zzpo.zzbl(24);
        }
        zzpg.checkArgument(zzbl < 13);
        return zzbju[zzbl];
    }

    public static byte[] zzc(byte[] bArr, int i, int i2) {
        byte[] bArr2 = zzbjt;
        byte[] bArr3 = new byte[(bArr2.length + i2)];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    public static Pair<Integer, Integer> zze(byte[] bArr) {
        zzpo zzpo = new zzpo(bArr);
        int zza = zza(zzpo);
        int zzb = zzb(zzpo);
        int zzbl = zzpo.zzbl(4);
        if (zza == 5 || zza == 29) {
            zzb = zzb(zzpo);
            if (zza(zzpo) == 22) {
                zzbl = zzpo.zzbl(4);
            }
        }
        int i = zzbjv[zzbl];
        zzpg.checkArgument(i != -1);
        return Pair.create(Integer.valueOf(zzb), Integer.valueOf(i));
    }
}
