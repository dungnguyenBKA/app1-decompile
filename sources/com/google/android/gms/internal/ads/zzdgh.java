package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdgh implements zzdfj<JSONObject> {
    private final JSONObject zzhee;

    public zzdgh(JSONObject jSONObject) {
        this.zzhee = jSONObject;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.zzhee;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            zzd.zzeb("Failed putting app indexing json.");
        }
    }
}
