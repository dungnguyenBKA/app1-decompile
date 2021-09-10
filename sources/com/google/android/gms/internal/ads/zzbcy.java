package com.google.android.gms.internal.ads;

public final class zzbcy implements zzbdl {
    @Override // com.google.android.gms.internal.ads.zzbdl
    public final zzbdd zza(zzbbo zzbbo, int i, String str, zzbbl zzbbl) {
        if (i <= 0) {
            return new zzbdo(zzbbo);
        }
        int zzack = zzbck.zzack();
        if (zzack < zzbbl.zzelm) {
            return new zzbds(zzbbo, zzbbl);
        }
        if (zzack < zzbbl.zzelg) {
            return new zzbdp(zzbbo, zzbbl);
        }
        return new zzbdn(zzbbo);
    }
}
