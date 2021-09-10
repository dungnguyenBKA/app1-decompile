package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdSDKNotificationManager;
import java.util.ArrayList;

/* renamed from: com.facebook.ads.redexgen.X.24  reason: invalid class name */
public final class AnonymousClass24 {
    public static void A00(@Nullable String str) {
        ArrayList arrayList;
        if (!TextUtils.isEmpty(str)) {
            synchronized (AdSDKNotificationManager.getNotificationListeners()) {
                arrayList = new ArrayList(AdSDKNotificationManager.getNotificationListeners());
            }
            ExecutorC0627Lc.A00(new AnonymousClass23(arrayList, str));
        }
    }
}
