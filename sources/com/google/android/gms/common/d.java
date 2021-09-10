package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.f0;
import com.google.android.gms.common.util.c;

public class d {
    public static final int a = g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final d b = new d();

    d() {
    }

    public static d c() {
        return b;
    }

    public Intent a(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            if (context == null || !c.h(context)) {
                StringBuilder q = ic.q("gcore_");
                q.append(a);
                q.append("-");
                if (!TextUtils.isEmpty(str)) {
                    q.append(str);
                }
                q.append("-");
                if (context != null) {
                    q.append(context.getPackageName());
                }
                q.append("-");
                if (context != null) {
                    try {
                        q.append(yv.a(context).e(context.getPackageName(), 0).versionCode);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                String sb = q.toString();
                int i2 = f0.a;
                Intent intent = new Intent("android.intent.action.VIEW");
                Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(FacebookAdapter.KEY_ID, "com.google.android.gms");
                if (!TextUtils.isEmpty(sb)) {
                    appendQueryParameter.appendQueryParameter("pcampaignid", sb);
                }
                intent.setData(appendQueryParameter.build());
                intent.setPackage("com.android.vending");
                intent.addFlags(524288);
                return intent;
            }
            int i3 = f0.a;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        } else if (i != 3) {
            return null;
        } else {
            int i4 = f0.a;
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent3.setData(fromParts);
            return intent3;
        }
    }

    public PendingIntent b(Context context, int i, int i2) {
        Intent a2 = a(context, i, null);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a2, 134217728);
    }

    public int d(Context context) {
        return e(context, a);
    }

    public int e(Context context, int i) {
        int isGooglePlayServicesAvailable = g.isGooglePlayServicesAvailable(context, i);
        if (g.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }
}
