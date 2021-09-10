package defpackage;

import java.util.Locale;
import org.json.JSONObject;

/* renamed from: iq  reason: default package */
public class iq extends fq {
    public String n;
    public String o = "en";
    public String p;

    public static iq e(JSONObject jSONObject) {
        iq iqVar = new iq();
        try {
            iqVar.c = jSONObject.optInt("startVersion");
            iqVar.b = jSONObject.optInt("activeType");
            iqVar.d = jSONObject.optInt("order");
            iqVar.f = jSONObject.optInt("order");
            iqVar.i = fq.a(jSONObject.optString("iconURL"));
            iqVar.p = fq.a(jSONObject.optString("editTabUrl"));
            fq.a(jSONObject.optString("unlockIconUrl"));
            iqVar.o = jSONObject.optString("fontLocale");
            String optString = jSONObject.optString("packageID");
            iqVar.j = optString;
            if (!optString.isEmpty()) {
                String lowerCase = iqVar.j.toLowerCase(Locale.ENGLISH);
                iqVar.j = lowerCase;
                int lastIndexOf = lowerCase.lastIndexOf(".");
                iqVar.h = lastIndexOf >= 0 ? iqVar.j.substring(lastIndexOf + 1) : iqVar.j;
            }
            String a = fq.a(jSONObject.optString("packageURL"));
            iqVar.k = a;
            if (a != null) {
                iqVar.n = iqVar.k.substring(a.lastIndexOf("/") + 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return iqVar;
    }

    public String f() {
        String str;
        if (this.n == null && (str = this.k) != null) {
            this.n = str.substring(str.lastIndexOf("/") + 1);
        }
        return this.n;
    }
}
