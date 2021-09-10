package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.Nullable;
import org.json.JSONObject;

public final class zzdcj implements zzdfj<Bundle> {
    @Nullable
    private final JSONObject zzgko;
    @Nullable
    private final JSONObject zzhbr;

    public zzdcj(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        this.zzhbr = jSONObject;
        this.zzgko = jSONObject2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.zzhbr;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.zzgko;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
