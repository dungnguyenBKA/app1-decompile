package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdgr implements zzdfj<JSONObject> {
    private JSONObject zzhej;

    public zzdgr(JSONObject jSONObject) {
        this.zzhej = jSONObject;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.zzhej);
        } catch (JSONException unused) {
            zzd.zzeb("Unable to get cache_state");
        }
    }
}
