package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzdgv implements zzdfi<zzdfj<JSONObject>> {
    private final JSONObject zzhem;

    zzdgv(Context context) {
        this.zzhem = zzauc.zzw(context);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<JSONObject>> zzasy() {
        return zzdzk.zzag(new zzdgu(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzq(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zzhem);
        } catch (JSONException unused) {
            zzd.zzeb("Failed putting version constants.");
        }
    }
}
