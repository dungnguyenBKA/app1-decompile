package com.facebook.ads.redexgen.X;

public class KH {
    public final C03408w A00;
    public final KG A01;
    public final String A02;

    public KH(KG kg) {
        this(kg, null, null);
    }

    public KH(KG kg, C03408w r2, String str) {
        this.A01 = kg;
        this.A00 = r2;
        this.A02 = str;
    }

    public C03408w A00() {
        return this.A00;
    }

    public final KG A01() {
        return this.A01;
    }

    public final String A02() {
        return this.A02;
    }
}
