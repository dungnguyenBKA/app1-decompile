package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;

public class W3 implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public W3(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A05 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        ArrayList arrayList = new ArrayList();
        int min = Math.min(this.A00.A05.length, this.A00.A03.A0U());
        for (int i = 0; i < min; i++) {
            arrayList.add(this.A00.A05[i].name);
        }
        Collections.sort(arrayList);
        return this.A00.A0F(arrayList);
    }
}
