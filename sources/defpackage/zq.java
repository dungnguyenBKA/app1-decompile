package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.camerasideas.collagemaker.activity.BaseActivity;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.k;
import com.camerasideas.collagemaker.appdata.f;
import com.google.firebase.analytics.FirebaseAnalytics;

/* access modifiers changed from: package-private */
/* renamed from: zq  reason: default package */
public class zq implements dd0 {
    final /* synthetic */ BaseActivity a;

    zq(BaseActivity baseActivity) {
        this.a = baseActivity;
    }

    @Override // defpackage.dd0
    public void a() {
    }

    @Override // defpackage.dd0
    public void b() {
        f.l(this.a, true);
        uq.n(this.a, "Click_Rate", "RateUs");
    }

    @Override // defpackage.dd0
    public void c() {
    }

    @Override // defpackage.dd0
    public void d() {
        f.l(this.a, true);
        uq.n(this.a, "Click_Rate", "SendFeedback");
        BaseActivity baseActivity = this.a;
        Bundle bundle = new Bundle();
        bundle.putString("error report description", "");
        ((sm) Fragment.Y(baseActivity, k.class.getName(), bundle)).x1(baseActivity.getSupportFragmentManager());
    }

    @Override // defpackage.dd0
    public void e(String str, String str2, String str3) {
        BaseActivity baseActivity = this.a;
        String j = ic.j(str2, "-", str3);
        if (baseActivity != null) {
            em.h("FbAnalyticsUtils", "UserEvent/" + j);
            if (!TextUtils.isEmpty(j)) {
                FirebaseAnalytics instance = FirebaseAnalytics.getInstance(baseActivity);
                Bundle bundle = new Bundle();
                bundle.putString("Content", j);
                instance.a("Click_Rate", bundle);
            }
        }
    }
}
