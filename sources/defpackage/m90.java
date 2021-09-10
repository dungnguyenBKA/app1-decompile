package defpackage;

import androidx.core.app.b;
import org.json.JSONObject;

/* renamed from: m90  reason: default package */
public class m90 {
    private final r90 a;
    private final r90 b;
    private final boolean c;
    private final p90 d;
    private final q90 e;

    private m90(p90 p90, q90 q90, r90 r90, r90 r902, boolean z) {
        this.d = p90;
        this.e = q90;
        this.a = r90;
        if (r902 == null) {
            this.b = r90.NONE;
        } else {
            this.b = r902;
        }
        this.c = z;
    }

    public static m90 a(p90 p90, q90 q90, r90 r90, r90 r902, boolean z) {
        b.a(p90, "CreativeType is null");
        b.a(q90, "ImpressionType is null");
        b.a(r90, "Impression owner is null");
        r90 r903 = r90.NATIVE;
        if (r90 == r90.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        } else if (p90 == p90.DEFINED_BY_JAVASCRIPT && r90 == r903) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        } else if (q90 != q90.DEFINED_BY_JAVASCRIPT || r90 != r903) {
            return new m90(p90, q90, r90, r902, z);
        } else {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        ha0.e(jSONObject, "impressionOwner", this.a);
        ha0.e(jSONObject, "mediaEventsOwner", this.b);
        ha0.e(jSONObject, "creativeType", this.d);
        ha0.e(jSONObject, "impressionType", this.e);
        ha0.e(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.c));
        return jSONObject;
    }
}
