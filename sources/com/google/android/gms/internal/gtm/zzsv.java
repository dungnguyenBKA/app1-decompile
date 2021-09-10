package com.google.android.gms.internal.gtm;

import java.util.Comparator;

final class zzsv implements Comparator<zztd> {
    zzsv() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zztd zztd, zztd zztd2) {
        zztd zztd3 = zztd;
        zztd zztd4 = zztd2;
        zzst zzst = new zzst(zztd3);
        zzst zzst2 = new zzst(zztd4);
        while (zzst.hasNext() && zzst2.hasNext()) {
            int zza = zzsu.zza(zzst.zza() & 255, zzst2.zza() & 255);
            if (zza != 0) {
                return zza;
            }
        }
        return zzsu.zza(zztd3.zzd(), zztd4.zzd());
    }
}
