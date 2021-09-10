package defpackage;

import android.text.TextUtils;
import androidx.core.app.b;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: hq  reason: default package */
public class hq extends fq {
    public String n;
    private Map<String, jq> o;

    public static hq e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        hq hqVar = new hq();
        hqVar.c = jSONObject.optInt("startVersion");
        hqVar.b = jSONObject.optInt("activeType");
        hqVar.d = jSONObject.optInt("order");
        hqVar.f = jSONObject.optInt("orderInTab");
        hqVar.e = jSONObject.optBoolean("showInTab");
        hqVar.i = fq.a(jSONObject.optString("iconURL"));
        String optString = jSONObject.optString("packageID");
        hqVar.j = optString;
        if (!TextUtils.isEmpty(optString)) {
            String lowerCase = hqVar.j.toLowerCase(Locale.ENGLISH);
            hqVar.j = lowerCase;
            int lastIndexOf = lowerCase.lastIndexOf(".");
            hqVar.h = lastIndexOf >= 0 ? hqVar.j.substring(lastIndexOf + 1) : hqVar.j;
        }
        String a = fq.a(jSONObject.optString("packageURL"));
        hqVar.k = a;
        if (!TextUtils.isEmpty(a)) {
            hqVar.n = hqVar.k.substring(hqVar.k.lastIndexOf("/") + 1);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("enableCountry");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.optString(i));
            }
            hqVar.d(arrayList);
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("disableCountry");
        if (optJSONArray2 != null) {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                arrayList2.add(optJSONArray2.optString(i2));
            }
            hqVar.c(arrayList2);
        }
        return hqVar;
    }

    public String f() {
        return b.F(this.o);
    }

    public void g(Map<String, jq> map) {
        this.o = map;
    }
}
