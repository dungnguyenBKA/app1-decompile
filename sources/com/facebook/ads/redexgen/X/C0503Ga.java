package com.facebook.ads.redexgen.X;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.facebook.ads.redexgen.X.Ga  reason: case insensitive filesystem */
public final class C0503Ga {
    public final float A00;
    public final float A01;
    public final float A02;
    public final float A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final String A07;

    public C0503Ga(String str) {
        this(str, Float.MIN_VALUE, Float.MIN_VALUE, RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION, Float.MIN_VALUE, RecyclerView.UNDEFINED_DURATION, Float.MIN_VALUE);
    }

    public C0503Ga(String str, float f, float f2, int i, int i2, float f3, int i3, float f4) {
        this.A07 = str;
        this.A01 = f;
        this.A00 = f2;
        this.A05 = i;
        this.A04 = i2;
        this.A03 = f3;
        this.A06 = i3;
        this.A02 = f4;
    }
}
