package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzbm;
import org.json.JSONObject;

public final class zzdnd implements zzbm {
    public final String zzdsw;
    public final String zzdsy;
    public final JSONObject zzgcf;
    private final JSONObject zzhkj;

    zzdnd(JsonReader jsonReader) {
        JSONObject zzc = zzbh.zzc(jsonReader);
        this.zzhkj = zzc;
        this.zzdsy = zzc.optString("ad_html", null);
        this.zzdsw = zzc.optString("ad_base_url", null);
        this.zzgcf = zzc.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbm
    public final void zza(JsonWriter jsonWriter) {
        zzbh.zza(jsonWriter, this.zzhkj);
    }
}
