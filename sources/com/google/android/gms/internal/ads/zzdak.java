package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

public final class zzdak {
    public final String zzhae;
    public String zzhaf;
    public Bundle zzhag = new Bundle();

    public zzdak(JsonReader jsonReader) {
        Map<String, String> hashMap = new HashMap<>();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            if (nextName.equals("params")) {
                str = jsonReader.nextString();
            } else if (!nextName.equals("signal_dictionary")) {
                jsonReader.skipValue();
            } else {
                hashMap = zzbh.zzb(jsonReader);
            }
        }
        this.zzhae = str;
        jsonReader.endObject();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                this.zzhag.putString(entry.getKey(), entry.getValue());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final zzdak zzn(Bundle bundle) {
        try {
            this.zzhaf = zzr.zzkr().zzc(bundle).toString();
        } catch (JSONException unused) {
            this.zzhaf = "{}";
        }
        return this;
    }
}
