package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.ads.ADRequestList;
import com.google.android.gms.common.internal.n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class r3 {
    private final String a = "default_event_parameters";
    private final Bundle b = new Bundle();
    private Bundle c;
    final /* synthetic */ v3 d;

    public r3(v3 v3Var) {
        this.d = v3Var;
        n.e("default_event_parameters");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x009b A[Catch:{ NumberFormatException | JSONException -> 0x00a3 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.os.Bundle a() {
        /*
        // Method dump skipped, instructions count: 215
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.r3.a():android.os.Bundle");
    }

    public final void b(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor edit = this.d.o().edit();
        if (bundle.size() == 0) {
            edit.remove(this.a);
        } else {
            String str = this.a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(ADRequestList.ORDER_NULL, str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", ADRequestList.SELF);
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.d.a.c().n().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.d.a.c().n().b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.c = bundle;
    }
}
