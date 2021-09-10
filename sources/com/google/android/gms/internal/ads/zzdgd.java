package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdgd implements zzdfj<JSONObject> {
    private final String zzheb;

    public zzdgd(String str) {
        this.zzheb = str;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.zzheb);
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
