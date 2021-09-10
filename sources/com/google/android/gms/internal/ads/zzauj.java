package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

public final class zzauj implements zzatu {
    private zzamb<JSONObject, JSONObject> zzdyy;
    private zzamb<JSONObject, JSONObject> zzdzd;

    public zzauj(Context context) {
        zzamj zza = zzr.zzle().zza(context, zzazn.zzaab());
        zzamf<JSONObject> zzamf = zzame.zzdks;
        this.zzdzd = zza.zza("google.afma.request.getAdDictionary", zzamf, zzamf);
        this.zzdyy = zzr.zzle().zza(context, zzazn.zzaab()).zza("google.afma.sdkConstants.getSdkConstants", zzamf, zzamf);
    }

    @Override // com.google.android.gms.internal.ads.zzatu
    public final zzamb<JSONObject, JSONObject> zzwk() {
        return this.zzdyy;
    }
}
