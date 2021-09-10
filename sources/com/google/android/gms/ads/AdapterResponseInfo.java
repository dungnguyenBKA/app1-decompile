package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvw;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdapterResponseInfo {
    private final zzvw a;
    private final AdError b;

    private AdapterResponseInfo(zzvw zzvw) {
        AdError adError;
        this.a = zzvw;
        zzvg zzvg = zzvw.zzciq;
        if (zzvg == null) {
            adError = null;
        } else {
            adError = zzvg.zzqb();
        }
        this.b = adError;
    }

    public static AdapterResponseInfo zza(zzvw zzvw) {
        if (zzvw != null) {
            return new AdapterResponseInfo(zzvw);
        }
        return null;
    }

    public final AdError getAdError() {
        return this.b;
    }

    public final String getAdapterClassName() {
        return this.a.zzcio;
    }

    public final Bundle getCredentials() {
        return this.a.zzcir;
    }

    public final long getLatencyMillis() {
        return this.a.zzcip;
    }

    public final String toString() {
        try {
            return zzdr().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final JSONObject zzdr() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.a.zzcio);
        jSONObject.put("Latency", this.a.zzcip);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.a.zzcir.keySet()) {
            jSONObject2.put(str, this.a.zzcir.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.b;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.zzdr());
        }
        return jSONObject;
    }
}
