package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

final class zzahu implements zzaif<zzbeb> {
    zzahu() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        JSONObject zztk;
        zzbeb zzbeb2 = zzbeb;
        zzaef zzadi = zzbeb2.zzadi();
        if (zzadi == null || (zztk = zzadi.zztk()) == null) {
            zzbeb2.zza("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzbeb2.zza("nativeAdViewSignalsReady", zztk);
        }
    }
}
