package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import org.json.JSONException;
import org.json.JSONObject;

public final class LoadAdError extends AdError {
    private final ResponseInfo e;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.e = responseInfo;
    }

    public final ResponseInfo getResponseInfo() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            return this.e;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
    public final String toString() {
        try {
            return zzdr().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject zzdr() {
        JSONObject zzdr = super.zzdr();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzdr.put("Response Info", "null");
        } else {
            zzdr.put("Response Info", responseInfo.zzdr());
        }
        return zzdr;
    }
}
