package defpackage;

import org.json.JSONObject;

/* renamed from: m30  reason: default package */
public class m30 {
    private final d10 a;

    m30(d10 d10) {
        this.a = d10;
    }

    public t30 a(JSONObject jSONObject) {
        n30 n30;
        if (jSONObject.getInt("settings_version") != 3) {
            n30 = new h30();
        } else {
            n30 = new o30();
        }
        return n30.a(this.a, jSONObject);
    }
}
