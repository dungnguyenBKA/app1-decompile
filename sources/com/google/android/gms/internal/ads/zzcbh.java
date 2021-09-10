package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzcbh implements zzeqb<JSONObject> {
    private final zzeqo<zzcch> zzfih;
    private final zzcbi zzgdb;

    public zzcbh(zzcbi zzcbi, zzeqo<zzcch> zzeqo) {
        this.zzgdb = zzcbi;
        this.zzfih = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzfih.get().zzaof();
    }
}
