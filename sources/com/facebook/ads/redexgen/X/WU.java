package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.List;

public class WU implements AbstractC02806e {
    public final /* synthetic */ EnumC02766a A00;
    public final /* synthetic */ WW A01;
    public final /* synthetic */ List A02;

    public WU(WW ww, List list, EnumC02766a r3) {
        this.A01 = ww;
        this.A02 = list;
        this.A00 = r3;
    }

    /* JADX INFO: Multiple debug info for r0v6 com.facebook.ads.redexgen.X.WV: [D('systemSettings' com.facebook.ads.redexgen.X.WV), D('bundledSignalMetadata' com.facebook.ads.redexgen.X.6d)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        HashMap hashMap = new HashMap();
        for (C02796d r1 : this.A02) {
            if (r1.A02()) {
                String str = (String) r1.A01();
                hashMap.put(str, new WV(this.A01.A00, str, this.A00));
            }
        }
        return this.A01.A03(hashMap);
    }
}
