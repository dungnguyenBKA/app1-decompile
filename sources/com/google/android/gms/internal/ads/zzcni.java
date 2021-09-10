package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcni implements zzdyu {
    private final zzcnf zzgom;
    private final zzve zzgon;

    zzcni(zzcnf zzcnf, zzve zzve) {
        this.zzgom = zzcnf;
        this.zzgon = zzve;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        zzve zzve = this.zzgon;
        String str = (String) obj;
        String str2 = zzve.zzche;
        String str3 = zzve.zzchf;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("headers", new JSONObject());
        jSONObject3.put("body", str2);
        jSONObject2.put("base_url", "");
        jSONObject2.put("signals", new JSONObject(str3));
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", new JSONObject());
        return zzdzk.zzag(jSONObject);
    }
}
