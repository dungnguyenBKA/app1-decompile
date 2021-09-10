package com.android.billingclient.api;

public final class g {
    private int a;
    private String b;

    public static class a {
        private int a;
        private String b = "";

        a(z zVar) {
        }

        public g a() {
            g gVar = new g();
            gVar.a = this.a;
            gVar.b = this.b;
            return gVar;
        }

        public a b(String str) {
            this.b = str;
            return this;
        }

        public a c(int i) {
            this.a = i;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public final String a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }
}
