package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public class j {
    private final String a;
    private final String b;
    private final JSONObject c;

    public static class a {
        private final List<j> a;
        private final g b;

        public a(g gVar, List<j> list) {
            this.a = list;
            this.b = gVar;
        }

        public List<j> a() {
            return this.a;
        }

        public int b() {
            return this.b.b();
        }
    }

    public j(String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = new JSONObject(str);
    }

    public int a() {
        return this.c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public String b() {
        JSONObject jSONObject = this.c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public String c() {
        return this.c.optString("productId");
    }

    public boolean d() {
        return this.c.optBoolean("acknowledged", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return TextUtils.equals(this.a, jVar.a) && TextUtils.equals(this.b, jVar.b);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
