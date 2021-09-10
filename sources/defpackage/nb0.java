package defpackage;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: nb0  reason: default package */
public class nb0 {
    protected boolean a = false;
    protected String b = "";

    /* access modifiers changed from: protected */
    public void a(Context context) {
        if (this.a) {
            cc0.t(context).edit().putInt("have_click_ad_times", cc0.t(context).getInt("have_click_ad_times", 0) + 1).apply();
        }
    }

    /* access modifiers changed from: protected */
    public boolean b(Context context) {
        int i;
        if (!this.a) {
            return false;
        }
        if (System.currentTimeMillis() - cc0.t(context).getLong("last_start_click_ad_time", 0) > 86400000) {
            cc0.t(context).edit().putInt("have_click_ad_times", 0).apply();
            cc0.t(context).edit().putLong("last_start_click_ad_time", System.currentTimeMillis()).apply();
            return false;
        }
        int i2 = cc0.t(context).getInt("have_click_ad_times", 0);
        if (!TextUtils.isEmpty(this.b)) {
            i = cc0.i(context, this.b, "ad_click_times", 5);
        } else {
            i = cc0.h(context, "ad_click_times", 5);
        }
        if (i2 >= i) {
            return true;
        }
        return false;
    }
}
