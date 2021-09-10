package com.google.android.gms.internal.ads;

import java.util.Map;

final class zzaia implements zzaif<zzbeb> {
    zzaia() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zzbeb zzbeb2 = zzbeb;
        if (map.keySet().contains("start")) {
            zzbeb2.zzacx().zzadw();
        } else if (map.keySet().contains("stop")) {
            zzbeb2.zzacx().zzadx();
        } else if (map.keySet().contains("cancel")) {
            zzbeb2.zzacx().zzady();
        }
    }
}
