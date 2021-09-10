package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONException;

public final class zzbrh extends zzza {
    private final List<zzvw> zzadw;
    private final String zzfzb;
    private final String zzfzc;

    public zzbrh(zzdmw zzdmw, String str, zzcrq zzcrq) {
        String str2;
        String str3 = null;
        if (zzdmw == null) {
            str2 = null;
        } else {
            str2 = zzdmw.zzfzc;
        }
        this.zzfzc = str2;
        str3 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? zzb(zzdmw) : str3;
        this.zzfzb = str3 != null ? str3 : str;
        this.zzadw = zzcrq.getAdapterResponses();
    }

    private static String zzb(zzdmw zzdmw) {
        try {
            return zzdmw.zzhjj.getString("class_name");
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final List<zzvw> getAdapterResponses() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            return null;
        }
        return this.zzadw;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getMediationAdapterClassName() {
        return this.zzfzb;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getResponseId() {
        return this.zzfzc;
    }
}
