package com.facebook.ads.redexgen.X;

import android.graphics.Paint;

/* renamed from: com.facebook.ads.redexgen.X.Pi  reason: case insensitive filesystem */
public class C0735Pi extends Paint {
    public final /* synthetic */ C0736Pj A00;
    public final /* synthetic */ boolean A01;

    public C0735Pi(C0736Pj pj, boolean z) {
        int i;
        this.A00 = pj;
        this.A01 = z;
        setStyle(Paint.Style.FILL_AND_STROKE);
        setStrokeCap(Paint.Cap.ROUND);
        setStrokeWidth(3.0f);
        setAntiAlias(true);
        if (this.A01) {
            i = -1;
        } else {
            i = -10066330;
        }
        setColor(i);
    }
}
