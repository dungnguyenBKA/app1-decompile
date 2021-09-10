package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzczt implements zzdvz {
    static final zzdvz zzeaj = new zzczt();

    private zzczt() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        return ((JSONObject) obj).optString("nas");
    }
}
