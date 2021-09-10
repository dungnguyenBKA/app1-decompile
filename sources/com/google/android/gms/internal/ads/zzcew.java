package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcew implements zzdvz {
    private final JSONObject zzfst;
    private final zzcer zzgie;

    zzcew(zzcer zzcer, JSONObject jSONObject) {
        this.zzgie = zzcer;
        this.zzfst = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        return this.zzgie.zza(this.zzfst, (List) obj);
    }
}
