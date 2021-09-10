package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.camerasideas.collagemaker.appdata.f;
import java.io.IOException;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: yq  reason: default package */
public class yq implements pg0 {
    final /* synthetic */ Context b;

    yq(Context context) {
        this.b = context;
    }

    @Override // defpackage.pg0
    public void onFailure(og0 og0, IOException iOException) {
        Context context = this.b;
        f.j(context, uq.e(context));
    }

    @Override // defpackage.pg0
    public void onResponse(og0 og0, lh0 lh0) {
        if (lh0.j() != null && lh0.L() == 200) {
            try {
                String optString = new JSONObject(lh0.j().string()).optString("countryCode");
                if (TextUtils.isEmpty(optString)) {
                    optString = uq.e(this.b);
                }
                f.j(this.b, optString);
            } catch (Exception e) {
                e.printStackTrace();
                Context context = this.b;
                f.j(context, uq.e(context));
            }
        }
    }
}
