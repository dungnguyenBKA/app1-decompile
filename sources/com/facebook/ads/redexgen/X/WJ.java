package com.facebook.ads.redexgen.X;

import java.util.ArrayList;

public class WJ implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public WJ(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A04 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        ArrayList arrayList = new ArrayList();
        int min = Math.min(this.A00.A04.length, this.A00.A03.A0U());
        for (int i = 0; i < min; i++) {
            arrayList.add(this.A00.A04[i].name);
        }
        return this.A00.A0F(arrayList);
    }
}
