package com.wcl.notchfit;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import androidx.core.app.b;
import androidx.recyclerview.widget.RecyclerView;

public class a {

    /* access modifiers changed from: package-private */
    /* renamed from: com.wcl.notchfit.a$a  reason: collision with other inner class name */
    public static class C0085a implements cb0 {
        final /* synthetic */ Activity a;
        final /* synthetic */ cb0 b;

        C0085a(Activity activity, cb0 cb0) {
            this.a = activity;
            this.b = cb0;
        }

        @Override // defpackage.cb0
        public void a(xa0 xa0) {
            View rootView;
            if (xa0.c() && (rootView = this.a.getWindow().getDecorView().getRootView()) != null) {
                int[] iArr = new int[2];
                rootView.getLocationOnScreen(iArr);
                if (iArr[1] >= xa0.b()) {
                    xa0.e(false);
                    xa0.g(0);
                    xa0.f(0);
                }
            }
            cb0 cb0 = this.b;
            if (cb0 != null) {
                cb0.a(xa0);
            }
        }
    }

    public static void a(Activity activity, ya0 ya0, cb0 cb0) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (ya0 != ya0.CUSTOM) {
                ((za0) bb0.a().b()).b(activity, true);
            }
            if (ya0 == ya0.FULL_SCREEN) {
                b.B0(activity);
            } else if (ya0 == ya0.TRANSLUCENT) {
                activity.getWindow().addFlags(RecyclerView.UNDEFINED_DURATION);
                activity.getWindow().clearFlags(67108864);
                activity.getWindow().addFlags(134217728);
                activity.getWindow().setStatusBarColor(0);
            }
            ((za0) bb0.a().b()).j(activity, new C0085a(activity, cb0));
        }
    }
}
