package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdgw implements zzdfj<JSONObject> {
    private String zzhen;
    private String zzheo;

    public zzdgw(String str, String str2) {
        this.zzhen = str;
        this.zzheo = str2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            zzb.put("doritos", this.zzhen);
            zzb.put("doritos_v2", this.zzheo);
        } catch (JSONException unused) {
            zzd.zzeb("Failed putting doritos string.");
        }
    }
}
