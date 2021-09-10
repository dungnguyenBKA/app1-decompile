package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

public final class zzcfb {
    private final Executor executor;
    private final zzcer zzghm;

    public zzcfb(Executor executor2, zzcer zzcer) {
        this.executor = executor2;
        this.zzghm = zzcer;
    }

    public final zzdzw<List<zzcfg>> zzg(JSONObject jSONObject, String str) {
        zzdzw zzdzw;
        String optString;
        char c;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return zzdzk.zzag(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (!(optJSONObject == null || (optString = optJSONObject.optString("name")) == null)) {
                String optString2 = optJSONObject.optString("type");
                if ("string".equals(optString2)) {
                    c = 1;
                } else {
                    c = "image".equals(optString2) ? (char) 2 : 0;
                }
                if (c == 1) {
                    zzdzw = zzdzk.zzag(new zzcfg(optString, optJSONObject.optString("string_value")));
                } else if (c == 2) {
                    zzdzw = zzdzk.zzb(this.zzghm.zzc(optJSONObject, "image_value"), new zzcfd(optString), this.executor);
                }
                arrayList.add(zzdzw);
            }
            zzdzw = zzdzk.zzag(null);
            arrayList.add(zzdzw);
        }
        return zzdzk.zzb(zzdzk.zzi(arrayList), zzcfe.zzeaj, this.executor);
    }
}
