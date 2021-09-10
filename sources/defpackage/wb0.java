package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: wb0  reason: default package */
public abstract class wb0 extends ub0 {
    public int b = -1;

    /* renamed from: wb0$a */
    public interface a {
        void a(boolean z);
    }

    /* access modifiers changed from: protected */
    public dc0 j(Context context, String str, String str2, String str3) {
        String str4;
        int i = 0;
        try {
            if (!TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(str3)) {
                    str4 = cc0.k(context, str3, str2, "");
                } else {
                    str4 = cc0.j(context, str2, "");
                }
                if (!TextUtils.isEmpty(str4)) {
                    i = new JSONObject(str4).optInt(str, 0);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (i > 0) {
            return new dc0(context, i);
        }
        return null;
    }

    public abstract boolean k();

    public abstract void l(Activity activity, a aVar);
}
