package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzccm implements zzeqb<zzcck> {
    private final zzeqo<JSONObject> zzfiy;
    private final zzeqo<zzdmw> zzfta;

    public zzccm(zzeqo<zzdmw> zzeqo, zzeqo<JSONObject> zzeqo2) {
        this.zzfta = zzeqo;
        this.zzfiy = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcck(this.zzfta.get(), this.zzfiy.get());
    }
}
