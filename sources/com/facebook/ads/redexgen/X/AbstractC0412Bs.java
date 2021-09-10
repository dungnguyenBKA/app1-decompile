package com.facebook.ads.redexgen.X;

import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Bs  reason: case insensitive filesystem */
public abstract class AbstractC0412Bs extends YZ implements GC {
    public static String[] A02;
    public long A00;
    public GC A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"", "mui60dwzFhaHNm2Uk6c71g13RzPqoL9o", "B0rzWlns", "IaExOe45iIyqIoKsg3ghGHNojNO5y7aX", "6x0KWKc5lmTcd6rSDKCIntspSHI5N7vM", "fpXFGNqhd64a2XzCiJ5Y2uwqVb67lOfi", "JEeTPk6X6cicZdwnLWr3cLjXKJNjxOw", "om0z9vsHwazWN6uDNjDMJ"};
    }

    public abstract void A08();

    @Override // com.facebook.ads.redexgen.X.BV
    public final void A07() {
        super.A07();
        this.A01 = null;
    }

    public final void A09(long j, GC gc, long j2) {
        super.A01 = j;
        this.A01 = gc;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
        if (A02[0].length() != 0) {
            throw new RuntimeException();
        }
        A02[1] = "xukRyz5yFwN1nVXA8Rs2f92E1X9llmA1";
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final List<GB> A63(long j) {
        return this.A01.A63(j - this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final long A6S(int i) {
        return this.A01.A6S(i) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6T() {
        return this.A01.A6T();
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6n(long j) {
        return this.A01.A6n(j - this.A00);
    }
}
