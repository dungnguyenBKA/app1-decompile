package com.facebook.ads.redexgen.X;

import android.text.Layout;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.facebook.ads.redexgen.X.ay  reason: case insensitive filesystem */
public final class C1067ay extends GB {
    public final long A00;
    public final long A01;

    public C1067ay(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Float.MIN_VALUE, RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION, Float.MIN_VALUE, RecyclerView.UNDEFINED_DURATION, Float.MIN_VALUE);
    }

    public C1067ay(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.A01 = j;
        this.A00 = j2;
    }

    public C1067ay(CharSequence charSequence) {
        this(0, 0, charSequence);
    }

    public final boolean A00() {
        return super.A01 == Float.MIN_VALUE && this.A02 == Float.MIN_VALUE;
    }
}
