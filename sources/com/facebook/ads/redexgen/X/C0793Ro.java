package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Ro  reason: case insensitive filesystem */
public class C0793Ro extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C0794Rp A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C0793Ro(C0794Rp rp, Map map, Map map2) {
        this.A00 = rp;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (!TextUtils.isEmpty(this.A00.A0N)) {
            HashMap hashMap = new HashMap();
            hashMap.putAll(this.A02);
            hashMap.putAll(this.A01);
            if (this.A00.A0F != null) {
                this.A00.A0F.A8o(this.A00.A0N, hashMap);
            }
        }
    }
}
