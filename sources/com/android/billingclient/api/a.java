package com.android.billingclient.api;

public final class a {
    private String a;

    /* renamed from: com.android.billingclient.api.a$a  reason: collision with other inner class name */
    public static final class C0030a {
        private String a;

        C0030a(q qVar) {
        }

        public final a a() {
            String str = this.a;
            if (str != null) {
                a aVar = new a(null);
                aVar.a = str;
                return aVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public final C0030a b(String str) {
            this.a = str;
            return this;
        }
    }

    a(q qVar) {
    }

    public static C0030a b() {
        return new C0030a(null);
    }

    public final String a() {
        return this.a;
    }
}
