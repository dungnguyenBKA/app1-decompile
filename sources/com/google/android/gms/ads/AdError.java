package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzvg;
import org.json.JSONException;
import org.json.JSONObject;

public class AdError {
    public static final String UNDEFINED_DOMAIN = "undefined";
    private final int a;
    private final String b;
    private final String c;
    private final AdError d;

    public AdError(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = null;
    }

    public AdError getCause() {
        return this.d;
    }

    public int getCode() {
        return this.a;
    }

    public String getDomain() {
        return this.c;
    }

    public String getMessage() {
        return this.b;
    }

    public String toString() {
        try {
            return zzdr().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final zzvg zzdq() {
        zzvg zzvg;
        if (this.d == null) {
            zzvg = null;
        } else {
            AdError adError = this.d;
            zzvg = new zzvg(adError.a, adError.b, adError.c, null, null);
        }
        return new zzvg(this.a, this.b, this.c, zzvg, null);
    }

    public JSONObject zzdr() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.a);
        jSONObject.put("Message", this.b);
        jSONObject.put("Domain", this.c);
        AdError adError = this.d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.zzdr());
        }
        return jSONObject;
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = adError;
    }
}
