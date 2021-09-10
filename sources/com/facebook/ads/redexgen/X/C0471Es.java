package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Es  reason: case insensitive filesystem */
public class C0471Es extends TC {
    public final /* synthetic */ C0470Er A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0471Es(C0470Er er, Context context) {
        super(context);
        this.A00 = er;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4X, com.facebook.ads.redexgen.X.TC
    public final void A0J(View view, AnonymousClass4Z r6, AnonymousClass4V r7) {
        C0470Er er = this.A00;
        int[] A0J = er.A0J(((TS) er).A00.getLayoutManager(), view);
        int i = A0J[0];
        int i2 = A0J[1];
        int A0N = A0N(Math.max(Math.abs(i), Math.abs(i2)));
        if (A0N > 0) {
            r7.A05(i, i2, A0N, ((TC) this).A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final float A0K(DisplayMetrics displayMetrics) {
        return 100.0f / ((float) displayMetrics.densityDpi);
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final int A0M(int i) {
        return Math.min(100, super.A0M(i));
    }
}
