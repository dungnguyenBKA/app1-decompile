package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.1c  reason: invalid class name and case insensitive filesystem */
public class C01501c {
    public int A00;
    public int A01;
    public String A02;

    public C01501c(String str, int i, int i2) {
        this.A02 = str;
        this.A01 = Math.min(C0632Lh.A02.widthPixels, (int) (((float) i) * C0632Lh.A01));
        this.A00 = Math.min(C0632Lh.A02.heightPixels, (int) (((float) i2) * C0632Lh.A01));
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final String A02() {
        return this.A02;
    }
}
