package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.firebase.remoteconfig.f;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: nq  reason: default package */
public final /* synthetic */ class nq implements hw {
    public final /* synthetic */ f a;
    public final /* synthetic */ Context b;

    public /* synthetic */ nq(f fVar, Context context) {
        this.a = fVar;
        this.b = context;
    }

    @Override // defpackage.hw
    public final void onSuccess(Object obj) {
        f fVar = this.a;
        Context context = this.b;
        Void r8 = (Void) obj;
        fVar.b();
        String f = fVar.f("self_ad_config");
        try {
            if (!TextUtils.isEmpty(f)) {
                JSONArray jSONArray = new JSONArray(f);
                JSONArray jSONArray2 = new JSONArray();
                int i = Build.VERSION.SDK_INT;
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    if (jSONObject.optInt("minSDK", 0) <= i) {
                        jSONArray2.put(jSONObject);
                    }
                }
                new Thread(new pq(jSONArray2, context), "downloadSelfAdImage").start();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
