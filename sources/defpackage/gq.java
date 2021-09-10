package defpackage;

import android.text.TextUtils;
import androidx.core.app.b;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: gq  reason: default package */
public class gq extends fq {
    private Map<String, jq> n;
    private boolean o;

    public static gq e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        gq gqVar = new gq();
        gqVar.c = jSONObject.optInt("startVersion");
        gqVar.b = jSONObject.optInt("activeType");
        gqVar.d = jSONObject.optInt("order");
        gqVar.f = jSONObject.optInt("orderInTab");
        gqVar.e = jSONObject.optBoolean("showInTab");
        gqVar.g = jSONObject.optBoolean("encrypted");
        gqVar.i = fq.a(jSONObject.optString("iconURL"));
        String optString = jSONObject.optString("packageID");
        gqVar.j = optString;
        if (!TextUtils.isEmpty(optString)) {
            String lowerCase = gqVar.j.toLowerCase(Locale.ENGLISH);
            gqVar.j = lowerCase;
            int lastIndexOf = lowerCase.lastIndexOf(".");
            gqVar.h = lastIndexOf >= 0 ? gqVar.j.substring(lastIndexOf + 1) : gqVar.j;
        }
        String a = fq.a(jSONObject.optString("packageURL"));
        gqVar.k = a;
        if (!TextUtils.isEmpty(a)) {
            gqVar.k.substring(gqVar.k.lastIndexOf("/") + 1);
        }
        gqVar.o = jSONObject.optBoolean("enableCrop");
        JSONArray optJSONArray = jSONObject.optJSONArray("enableCountry");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.optString(i));
            }
            gqVar.d(arrayList);
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("disableCountry");
        if (optJSONArray2 != null) {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                arrayList2.add(optJSONArray2.optString(i2));
            }
            gqVar.c(arrayList2);
        }
        return gqVar;
    }

    public boolean f() {
        return this.o;
    }

    public String g() {
        return b.F(this.n);
    }

    public void h(Map<String, jq> map) {
        this.n = map;
    }
}
