package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcos implements zzdqu {
    static final zzdqu zzgnx = new zzcos();

    private zzcos() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzd.zzeb("Ad request signals:");
        zzd.zzeb(jSONObject.toString(2));
        return jSONObject;
    }
}
