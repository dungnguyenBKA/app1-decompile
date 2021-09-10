package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzazg implements zzazh {
    private final int zzehw;
    private final Map zzehx;

    zzazg(int i, Map map) {
        this.zzehw = i;
        this.zzehx = map;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void zzb(JsonWriter jsonWriter) {
        zzaze.zza(this.zzehw, this.zzehx, jsonWriter);
    }
}
