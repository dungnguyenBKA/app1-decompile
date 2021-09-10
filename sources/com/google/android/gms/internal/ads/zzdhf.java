package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdhf implements zzdfj<JSONObject> {
    private Bundle zzhet;

    public zzdhf(Bundle bundle) {
        this.zzhet = bundle;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.zzhet != null) {
            try {
                zzbh.zzb(zzbh.zzb(jSONObject2, "device"), "play_store").put("parental_controls", zzr.zzkr().zzc(this.zzhet));
            } catch (JSONException unused) {
                zzd.zzeb("Failed putting parental controls bundle.");
            }
        }
    }
}
