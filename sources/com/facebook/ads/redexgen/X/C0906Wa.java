package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Wa  reason: case insensitive filesystem */
public class C0906Wa implements AbstractC02806e {
    public final /* synthetic */ C0908Wc A00;
    public final /* synthetic */ List A01;

    public C0906Wa(C0908Wc wc, List list) {
        this.A00 = wc;
        this.A01 = list;
    }

    /* JADX INFO: Multiple debug info for r0v5 com.facebook.ads.redexgen.X.Wb: [D('bundledSignalMetadata' com.facebook.ads.redexgen.X.6d), D('systemProperty' com.facebook.ads.redexgen.X.Wb)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        HashMap hashMap = new HashMap();
        for (C02796d r1 : this.A01) {
            if (r1.A02()) {
                String str = (String) r1.A01();
                hashMap.put(str, new C0907Wb(str));
            }
        }
        return this.A00.A02(hashMap);
    }
}
