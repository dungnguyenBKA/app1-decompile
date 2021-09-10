package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdha implements zzdfj<JSONObject> {
    private List<String> zzduo;

    public zzdha(List<String> list) {
        this.zzduo = list;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.zzduo));
        } catch (JSONException unused) {
            zzd.zzeb("Failed putting experiment ids.");
        }
    }
}
