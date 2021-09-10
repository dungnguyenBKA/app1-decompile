package com.facebook.ads.redexgen.X;

import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Vc  reason: case insensitive filesystem */
public class C0882Vc implements AbstractC02876l<String> {
    public final String A00;
    public final boolean A01;

    public C0882Vc(String str) {
        this.A00 = str;
        this.A01 = C0883Vd.A01().hasSystemFeature(str);
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final JSONObject AEK(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.A00, this.A01);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    public final boolean A80(Object obj) {
        C0882Vc vc = (C0882Vc) obj;
        return this.A00.equals(vc.A00) && this.A01 == vc.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    public final int ADz() {
        return this.A00.getBytes().length + 8;
    }
}
