package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;

public class R5 extends QD {
    public final /* synthetic */ JC A00;
    public final /* synthetic */ C0625La A01;
    public final /* synthetic */ C0720Ot A02;
    public final /* synthetic */ R0 A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public R5(R0 r0, String str, C0720Ot ot, JC jc, Map map, C0625La la) {
        this.A03 = r0;
        this.A04 = str;
        this.A02 = ot;
        this.A00 = jc;
        this.A05 = map;
        this.A01 = la;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!R0.A04(this.A03).A0a() && !TextUtils.isEmpty(this.A04) && !R0.A03(this.A03).get(this.A02.A02())) {
            this.A00.A8a(this.A04, new C0678Nc(this.A05).A04(R0.A05(this.A03)).A03(this.A01).A06());
            R0.A03(this.A03).put(this.A02.A02(), true);
        }
    }
}
