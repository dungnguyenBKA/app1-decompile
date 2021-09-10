package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzcbk implements zzeqb<JSONObject> {
    private final zzcbi zzgdb;

    public zzcbk(zzcbi zzcbi) {
        this.zzgdb = zzcbi;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (JSONObject) zzeqh.zza(this.zzgdb.zzanm(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
