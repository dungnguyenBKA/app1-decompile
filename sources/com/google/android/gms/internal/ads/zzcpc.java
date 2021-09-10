package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

final class zzcpc implements zzamc<zzcoz> {
    zzcpc() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzamc
    public final /* synthetic */ JSONObject zzi(zzcoz zzcoz) {
        zzcoz zzcoz2 = zzcoz;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzcoz2.zzgpv.zzwm());
        jSONObject2.put("signals", zzcoz2.zzgpu);
        jSONObject3.put("body", zzcoz2.zzgpt.zzdvw);
        jSONObject3.put("headers", zzr.zzkr().zzj(zzcoz2.zzgpt.zzaj));
        jSONObject3.put("response_code", zzcoz2.zzgpt.zzgqd);
        jSONObject3.put("latency", zzcoz2.zzgpt.zzgqe);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzcoz2.zzgpv.zzwq());
        return jSONObject;
    }
}
