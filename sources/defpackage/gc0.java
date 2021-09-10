package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.consent.ConsentStatus;
import com.google.firebase.analytics.FirebaseAnalytics;

/* renamed from: gc0  reason: default package */
public class gc0 {
    private static int a = -1;

    public static void a(Context context, String str, String[] strArr, Object[] objArr) {
        if (context != null && cc0.l(context) != ConsentStatus.NON_PERSONALIZED) {
            boolean z = true;
            if (a == -1) {
                a = cc0.h(context, "enable_analytics", 1);
            }
            if (a != 1) {
                z = false;
            }
            if (z) {
                try {
                    Bundle bundle = new Bundle();
                    for (int i = 0; i < strArr.length; i++) {
                        if (objArr[i] instanceof String) {
                            bundle.putString(strArr[i], (String) objArr[i]);
                        } else if (objArr[i] instanceof Long) {
                            bundle.putLong(strArr[i], ((Long) objArr[i]).longValue());
                        }
                    }
                    FirebaseAnalytics.getInstance(context).a(str, bundle);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }
}
