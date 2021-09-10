package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Sv  reason: case insensitive filesystem */
public class C0825Sv implements AbstractC01832j {
    public final Rect A00 = new Rect();
    public final /* synthetic */ AnonymousClass3D A01;

    public C0825Sv(AnonymousClass3D r2) {
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01832j
    public final AnonymousClass3G A9Q(View view, AnonymousClass3G r9) {
        AnonymousClass3G A06 = AnonymousClass2z.A06(view, r9);
        if (A06.A08()) {
            return A06;
        }
        Rect rect = this.A00;
        rect.left = A06.A04();
        rect.top = A06.A06();
        rect.right = A06.A05();
        rect.bottom = A06.A03();
        int childCount = this.A01.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AnonymousClass3G A05 = AnonymousClass2z.A05(this.A01.getChildAt(i), A06);
            rect.left = Math.min(A05.A04(), rect.left);
            rect.top = Math.min(A05.A06(), rect.top);
            rect.right = Math.min(A05.A05(), rect.right);
            rect.bottom = Math.min(A05.A03(), rect.bottom);
        }
        return A06.A07(rect.left, rect.top, rect.right, rect.bottom);
    }
}
