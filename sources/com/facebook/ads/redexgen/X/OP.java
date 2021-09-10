package com.facebook.ads.redexgen.X;

public class OP {
    public final String A00;
    public final boolean A01;
    public final String[] A02;

    public OP(String str, String[] strArr) {
        this(str, strArr, true);
    }

    public OP(String str, String[] strArr, boolean z) {
        this.A00 = str;
        this.A02 = strArr;
        this.A01 = z;
    }
}
