package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public class n {
    private final String a;
    private final JSONObject b;

    static class a {
        private final List<n> a;
        private final int b;
        private final String c;

        public a(int i, String str, List<n> list) {
            this.b = i;
            this.c = str;
            this.a = list;
        }

        public final List<n> a() {
            return this.a;
        }

        public final int b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }
    }

    public n(String str) {
        this.a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        } else if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b.optString("price");
    }

    public String c() {
        return this.b.optString("productId");
    }

    public String d() {
        return this.b.optString("type");
    }

    public final String e() {
        return this.b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        return TextUtils.equals(this.a, ((n) obj).a);
    }

    /* access modifiers changed from: package-private */
    public final String f() {
        return this.b.optString("skuDetailsToken");
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
