package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

public class BE extends TC {
    public final /* synthetic */ C0391Ax A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BE(C0391Ax ax, XJ xj) {
        super(xj);
        this.A00 = ax;
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final float A0K(DisplayMetrics displayMetrics) {
        return this.A00.A00 / ((float) displayMetrics.densityDpi);
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final int A0L() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final int A0P(View view, int left) {
        AnonymousClass4K A09 = A09();
        if (!A09.A25()) {
            return 0;
        }
        AnonymousClass4L r1 = (AnonymousClass4L) view.getLayoutParams();
        return A0O(A09.A0l(view) - r1.leftMargin, A09.A0o(view) + r1.rightMargin, A09.A0f(), A09.A0i() - A09.A0g(), left) + this.A00.A02;
    }

    @Override // com.facebook.ads.redexgen.X.TC
    public final PointF A0Q(int i) {
        return this.A00.A46(i);
    }
}
