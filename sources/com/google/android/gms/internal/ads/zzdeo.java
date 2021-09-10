package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdeo implements Callable {
    private final List zzhct;

    zzdeo(List list) {
        this.zzhct = list;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        List<zzdzw> list = this.zzhct;
        JSONArray jSONArray = new JSONArray();
        for (zzdzw zzdzw : list) {
            if (((JSONObject) zzdzw.get()) != null) {
                jSONArray.put(zzdzw.get());
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new zzdel(jSONArray.toString());
    }
}
