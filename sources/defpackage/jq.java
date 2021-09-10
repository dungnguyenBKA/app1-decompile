package defpackage;

import java.io.Serializable;
import org.json.JSONObject;

/* renamed from: jq  reason: default package */
public class jq implements Serializable {
    public String b;

    public static jq a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        jq jqVar = new jq();
        jqVar.b = jSONObject.optString("title");
        jSONObject.optString("description");
        jSONObject.optString("buttonTitle");
        return jqVar;
    }
}
