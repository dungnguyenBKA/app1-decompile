package defpackage;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: gz  reason: default package */
public class gz implements ez, kz {
    private jz a;

    private static String b(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // defpackage.kz
    public void a(jz jzVar) {
        this.a = jzVar;
        az.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // defpackage.ez
    public void onEvent(String str, Bundle bundle) {
        jz jzVar = this.a;
        if (jzVar != null) {
            try {
                jzVar.a("$A$:" + b(str, bundle));
            } catch (JSONException unused) {
                az.f().i("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
