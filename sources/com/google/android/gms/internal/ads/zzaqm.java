package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

public final class zzaqm {
    private final boolean zzdqb;
    private final boolean zzdqc;
    private final boolean zzdqd;
    private final boolean zzdqe;
    private final boolean zzdqf;

    private zzaqm(zzaqo zzaqo) {
        this.zzdqb = zzaqo.zzdqb;
        this.zzdqc = zzaqo.zzdqc;
        this.zzdqd = zzaqo.zzdqd;
        this.zzdqe = zzaqo.zzdqe;
        this.zzdqf = zzaqo.zzdqf;
    }

    public final JSONObject zzdr() {
        try {
            return new JSONObject().put("sms", this.zzdqb).put("tel", this.zzdqc).put("calendar", this.zzdqd).put("storePicture", this.zzdqe).put("inlineVideo", this.zzdqf);
        } catch (JSONException e) {
            zzazk.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
