package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;

public final class zzaik {
    private final Context context;
    private final View view;
    private final zzei zzbpt;

    public zzaik(Context context2, zzei zzei, View view2) {
        this.context = context2;
        this.zzbpt = zzei;
        this.view = view2;
    }

    private final ResolveInfo zza(Intent intent, ArrayList<ResolveInfo> arrayList) {
        ResolveInfo resolveInfo = null;
        try {
            PackageManager packageManager = this.context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                int i = 0;
                while (true) {
                    if (i >= queryIntentActivities.size()) {
                        break;
                    } else if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        } catch (Throwable th) {
            zzr.zzkv().zza(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
    }

    private final ResolveInfo zzb(Intent intent) {
        return zza(intent, new ArrayList<>());
    }

    private static Intent zzf(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00c4 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.content.Intent zze(java.util.Map<java.lang.String, java.lang.String> r11) {
        /*
        // Method dump skipped, instructions count: 294
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zze(java.util.Map):android.content.Intent");
    }

    private static Intent zza(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }
}
