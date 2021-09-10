package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzbkn implements zzeqb<JSONObject> {
    private final zzeqo<zzdmw> zzfta;

    private zzbkn(zzeqo<zzdmw> zzeqo) {
        this.zzfta = zzeqo;
    }

    public static zzbkn zzc(zzeqo<zzdmw> zzeqo) {
        return new zzbkn(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzbko.zza(this.zzfta.get());
    }
}
