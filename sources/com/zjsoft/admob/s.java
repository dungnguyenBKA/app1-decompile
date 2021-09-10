package com.zjsoft.admob;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class s {
    private static s c;
    private int a = -1;
    private int b = -1;

    private s() {
    }

    public static synchronized s a() {
        s sVar;
        synchronized (s.class) {
            if (c == null) {
                c = new s();
            }
            sVar = c;
        }
        return sVar;
    }

    public boolean b(Context context) {
        if (this.b == -1) {
            String r = cc0.r("native_ads_config", "");
            if (!TextUtils.isEmpty(r)) {
                try {
                    JSONObject jSONObject = new JSONObject(r);
                    if (jSONObject.has("banner")) {
                        this.b = jSONObject.optInt("banner", 0);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                this.b = 0;
            }
        }
        if (this.b == 1) {
            return true;
        }
        return false;
    }

    public boolean c(Context context) {
        if (this.a == -1) {
            String r = cc0.r("native_ads_config", "");
            if (!TextUtils.isEmpty(r)) {
                try {
                    JSONObject jSONObject = new JSONObject(r);
                    if (jSONObject.has("card")) {
                        this.a = jSONObject.optInt("card", 0);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                this.a = 0;
            }
        }
        if (this.a == 1) {
            return true;
        }
        return false;
    }
}
