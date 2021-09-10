package com.android.billingclient.api;

import android.text.TextUtils;

public class f0 {
    private final String a;

    public static class a {
        private String a;

        a(e0 e0Var) {
        }

        public final a a(String str) {
            this.a = str;
            return this;
        }

        public final f0 b() {
            if (!TextUtils.isEmpty(this.a)) {
                return new f0(this.a, null);
            }
            throw new IllegalArgumentException("SKU must be set.");
        }
    }

    f0(String str, String str2) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }
}
