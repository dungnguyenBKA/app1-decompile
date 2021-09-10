package com.facebook.ads.redexgen.X;

import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class XB extends AbstractC02956t<AnonymousClass6N> {
    public XB(long j, @Nullable C02936r r9, AnonymousClass6N r10) {
        super(j, r9, r10, EnumC02946s.A0B);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        return ((AnonymousClass6N) A08()).A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        return ((AnonymousClass6N) A08()).A05(jSONObject);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final boolean A0B(AbstractC02956t<AnonymousClass6N> r3) {
        return ((AnonymousClass6N) A08()).A06(r3.A08());
    }
}
