package com.android.billingclient.api;

import java.util.ArrayList;

public class f {
    private boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private int f = 0;
    private ArrayList<n> g;
    private boolean h;

    public static class a {
        private String a;
        private String b;
        private ArrayList<n> c;

        a(y yVar) {
        }

        public f a() {
            ArrayList<n> arrayList = this.c;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<n> arrayList2 = this.c;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                n nVar = arrayList2.get(i);
                i++;
                if (nVar == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.c.size() > 1) {
                n nVar2 = this.c.get(0);
                String d = nVar2.d();
                ArrayList<n> arrayList3 = this.c;
                int size2 = arrayList3.size();
                int i2 = 0;
                while (i2 < size2) {
                    n nVar3 = arrayList3.get(i2);
                    i2++;
                    if (!d.equals(nVar3.d())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String e = nVar2.e();
                ArrayList<n> arrayList4 = this.c;
                int size3 = arrayList4.size();
                int i3 = 0;
                while (i3 < size3) {
                    n nVar4 = arrayList4.get(i3);
                    i3++;
                    if (!e.equals(nVar4.e())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            f fVar = new f(null);
            fVar.a = true ^ this.c.get(0).e().isEmpty();
            fVar.b = null;
            fVar.e = null;
            fVar.c = this.a;
            fVar.d = this.b;
            fVar.f = 0;
            fVar.g = this.c;
            fVar.h = false;
            return fVar;
        }

        public a b(String str, String str2) {
            this.a = str;
            this.b = str2;
            return this;
        }

        public a c(n nVar) {
            ArrayList<n> arrayList = new ArrayList<>();
            arrayList.add(nVar);
            this.c = arrayList;
            return this;
        }
    }

    f(y yVar) {
    }

    public static a f() {
        return new a(null);
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.d;
    }

    public int c() {
        return this.f;
    }

    public String d() {
        return this.g.get(0).c();
    }

    public boolean e() {
        return this.h;
    }

    public final ArrayList<n> h() {
        ArrayList<n> arrayList = new ArrayList<>();
        arrayList.addAll(this.g);
        return arrayList;
    }

    public final String k() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public final boolean o() {
        return (!this.h && this.b == null && this.e == null && this.f == 0 && !this.a) ? false : true;
    }

    public final String p() {
        return this.e;
    }
}
