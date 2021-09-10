package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.4J  reason: invalid class name */
public class AnonymousClass4J extends G2 {
    public final JSONObject A00;
    @Nullable
    public final JSONObject A01;

    public AnonymousClass4J(G7 g7, JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        super(g7, R3.A03);
        this.A00 = jSONObject;
        this.A01 = jSONObject2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Qy, com.facebook.ads.redexgen.X.G2
    public final void A3Q(Map<AbstractC0762Qj, R3> map, Map<G6, EnumC0769Qq> map2) {
        super.A00.A06(this.A00, this.A01);
        super.A3Q(map, map2);
    }
}
