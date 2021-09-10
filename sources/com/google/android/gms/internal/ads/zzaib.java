package com.google.android.gms.internal.ads;

import java.util.Map;

final class zzaib implements zzaif<zzbeb> {
    zzaib() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zzbeb zzbeb2 = zzbeb;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbeb2.zzkn();
        } else if ("resume".equals(str)) {
            zzbeb2.zzko();
        }
    }
}
