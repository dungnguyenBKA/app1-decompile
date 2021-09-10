package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import com.facebook.ads.internal.checkerframework.checker.nullness.qual.Nullable;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.2l  reason: invalid class name and case insensitive filesystem */
public final class C01852l extends C03579o {
    public static final int A06 = ((int) (C0632Lh.A01 * 6.0f));
    public static final int A07 = ((int) (C0632Lh.A01 * -4.0f));
    @Nullable
    public View$OnClickListenerC1014a7 A00;
    @Nullable
    public C0720Ot A01;
    public final JC A02 = C1122br.A01(this.A0I.A05().A00());
    public final C1143cD A03;
    public final C03649v A04;
    public final String A05;

    public C01852l(O1 o1, C1143cD cDVar, boolean z, String str, C03649v r6) {
        super(o1, z, str, r6);
        this.A03 = cDVar;
        this.A05 = str;
        this.A04 = r6;
        this.A03.A1K(this);
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public void setupNativeCtaExtension(C0720Ot ot) {
        this.A01 = ot;
        int A0K = J4.A0K(this.A0I.A05());
        AnonymousClass1I A012 = this.A03.A0z().A0M().A01();
        this.A00 = new View$OnClickListenerC1014a7(this.A0I.A05(), this.A03.A0z().A0S(), A012, this.A02, NQ.getDummyListener(), this.A04.A0e(), this.A03.A18());
        this.A00.setCta(ot.A03().A0G(), this.A05, new HashMap());
        this.A03.A1K(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (A0K == 1) {
            layoutParams.addRule(12);
            C0632Lh.A0T(this.A00, A06, 5, A012.A09(false));
            ((C03579o) this).A06.addView(this.A00, layoutParams);
        } else if (A0K == 2) {
            layoutParams.addRule(3, ((C03579o) this).A06.getId());
            layoutParams.setMargins(0, A07, 0, 0);
            addView(this.A00, 0, layoutParams);
            ((C03579o) this).A06.bringToFront();
        }
    }
}
