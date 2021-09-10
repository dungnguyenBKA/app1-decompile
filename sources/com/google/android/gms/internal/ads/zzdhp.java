package com.google.android.gms.internal.ads;

import com.google.android.gms.common.g;
import org.json.JSONException;
import org.json.JSONObject;

final /* synthetic */ class zzdhp implements zzdfj {
    static final zzdfj zzhde = new zzdhp();

    private zzdhp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzr(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", g.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
    }
}
