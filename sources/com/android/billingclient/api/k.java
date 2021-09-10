package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONObject;

public class k {
    private final String a;
    private final String b;
    private final JSONObject c;

    public k(String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = new JSONObject(str);
    }

    public String a() {
        JSONObject jSONObject = this.c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return TextUtils.equals(this.a, kVar.a) && TextUtils.equals(this.b, kVar.b);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.a);
        return valueOf.length() != 0 ? "PurchaseHistoryRecord. Json: ".concat(valueOf) : new String("PurchaseHistoryRecord. Json: ");
    }
}
