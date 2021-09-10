package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.Collections;
import java.util.List;

public final class zzdnb {
    public final int responseCode;
    public final String zzbvs;
    public final List<String> zzdms;
    public final String zzdwy;
    public final boolean zzeeb;
    public final long zzgqe;
    public final int zzhkg;
    public final zzdmy zzhkh;

    zzdnb(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        String str2 = str;
        long j = 0;
        zzdmy zzdmy = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = zzbh.zza(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j = jsonReader.nextLong();
            } else {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczz)).booleanValue() || !"public_error".equals(nextName) || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                    jsonReader.skipValue();
                } else {
                    zzdmy = new zzdmy(jsonReader);
                }
            }
        }
        jsonReader.endObject();
        this.zzdms = emptyList;
        this.zzhkg = i;
        this.zzbvs = str;
        this.zzdwy = str2;
        this.responseCode = i2;
        this.zzgqe = j;
        this.zzhkh = zzdmy;
        this.zzeeb = z;
    }
}
