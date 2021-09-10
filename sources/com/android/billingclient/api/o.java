package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;

public class o {
    private String a;
    private List<String> b;

    public static class a {
        private String a;
        private List<String> b;

        a(d0 d0Var) {
        }

        public o a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            } else if (this.b != null) {
                o oVar = new o();
                oVar.a = str;
                oVar.b = this.b;
                return oVar;
            } else {
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
        }

        public a b(List<String> list) {
            this.b = new ArrayList(list);
            return this;
        }

        public a c(String str) {
            this.a = str;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public String a() {
        return this.a;
    }

    public List<String> b() {
        return this.b;
    }
}
