package com.facebook.ads.redexgen.X;

import java.io.IOException;

public class HR extends IOException {
    public final int A00;
    public final HM A01;

    public HR(IOException iOException, HM hm, int i) {
        super(iOException);
        this.A01 = hm;
        this.A00 = i;
    }

    public HR(String str, HM hm, int i) {
        super(str);
        this.A01 = hm;
        this.A00 = i;
    }

    public HR(String str, IOException iOException, HM hm, int i) {
        super(str, iOException);
        this.A01 = hm;
        this.A00 = i;
    }
}
