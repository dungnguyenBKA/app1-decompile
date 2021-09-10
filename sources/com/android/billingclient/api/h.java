package com.android.billingclient.api;

public final class h {
    private String a;

    public static final class a {
        private String a;

        a(b0 b0Var) {
        }

        public final h a() {
            String str = this.a;
            if (str != null) {
                h hVar = new h(null);
                hVar.a = str;
                return hVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public final a b(String str) {
            this.a = str;
            return this;
        }
    }

    h(b0 b0Var) {
    }

    public static a b() {
        return new a(null);
    }

    public final String a() {
        return this.a;
    }
}
