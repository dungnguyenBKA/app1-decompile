package com.zjsoft.fan;

import android.content.Context;
import androidx.core.app.b;
import com.facebook.ads.AudienceNetworkAds;

public class a {
    public static final String a = b.class.getName();
    public static final String b = d.class.getName();
    public static final String c = e.class.getName();
    public static final String d = c.class.getName();
    public static int e = 0;

    public static boolean a(Context context) {
        if (e == 0) {
            if (AudienceNetworkAds.isInitialized(context)) {
                e = 1;
            } else if (b.a0(context, "com.facebook.katana") || b.a0(context, "com.facebook.lite") || b.a0(context, "com.facebook.orca") || b.a0(context, "com.instagram.android")) {
                e = 1;
                AudienceNetworkAds.initialize(context.getApplicationContext());
            } else {
                e = -1;
            }
        }
        if (e == 1) {
            return true;
        }
        return false;
    }
}
