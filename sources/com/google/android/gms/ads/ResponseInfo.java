package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvw;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ResponseInfo {
    private final zzyx a;
    private final List<AdapterResponseInfo> b = new ArrayList();

    private ResponseInfo(zzyx zzyx) {
        this.a = zzyx;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            try {
                List<zzvw> adapterResponses = zzyx.getAdapterResponses();
                if (adapterResponses != null) {
                    for (zzvw zzvw : adapterResponses) {
                        this.b.add(AdapterResponseInfo.zza(zzvw));
                    }
                }
            } catch (RemoteException e) {
                zzazk.zzc("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    public static ResponseInfo zza(zzyx zzyx) {
        if (zzyx != null) {
            return new ResponseInfo(zzyx);
        }
        return null;
    }

    public final List<AdapterResponseInfo> getAdapterResponses() {
        return this.b;
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zzc("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    public final String getResponseId() {
        try {
            return this.a.getResponseId();
        } catch (RemoteException e) {
            zzazk.zzc("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
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
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        for (AdapterResponseInfo adapterResponseInfo : this.b) {
            jSONArray.put(adapterResponseInfo.zzdr());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }
}
