package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class q {
    private final vy a;
    private final Map<String, String> b = Collections.synchronizedMap(new HashMap());

    public q(vy vyVar) {
        this.a = vyVar;
    }

    public void a(String str, f fVar) {
        JSONObject optJSONObject;
        JSONObject f = fVar.f();
        if (f.length() >= 1) {
            JSONObject d = fVar.d();
            if (d.length() >= 1 && (optJSONObject = f.optJSONObject(str)) != null) {
                String optString = optJSONObject.optString("choiceId");
                if (!optString.isEmpty()) {
                    synchronized (this.b) {
                        if (!optString.equals(this.b.get(str))) {
                            this.b.put(str, optString);
                            Bundle bundle = new Bundle();
                            bundle.putString("arm_key", str);
                            bundle.putString("arm_value", d.optString(str));
                            bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                            bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                            bundle.putString("group", optJSONObject.optString("group"));
                            this.a.logEvent("fp", "personalization_assignment", bundle);
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("_fpid", optString);
                            this.a.logEvent("fp", "_fpc", bundle2);
                        }
                    }
                }
            }
        }
    }
}
