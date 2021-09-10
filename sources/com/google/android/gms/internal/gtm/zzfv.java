package com.google.android.gms.internal.gtm;

import android.annotation.TargetApi;
import com.vungle.warren.error.VungleException;
import java.lang.reflect.Method;

@TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
public final class zzfv {
    private static final Method zza;
    private static final Method zzb;

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003b  */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 6
            r3 = 0
            r4 = 24
            java.lang.String r5 = "JobSchedulerCompat"
            r6 = 0
            if (r1 < r4) goto L_0x0034
            r1 = 4
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch:{ NoSuchMethodException -> 0x0028 }
            java.lang.Class<android.app.job.JobInfo> r7 = android.app.job.JobInfo.class
            r1[r3] = r7     // Catch:{ NoSuchMethodException -> 0x0028 }
            r7 = 1
            r1[r7] = r0     // Catch:{ NoSuchMethodException -> 0x0028 }
            r7 = 2
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch:{ NoSuchMethodException -> 0x0028 }
            r1[r7] = r8     // Catch:{ NoSuchMethodException -> 0x0028 }
            r7 = 3
            r1[r7] = r0     // Catch:{ NoSuchMethodException -> 0x0028 }
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r7 = "scheduleAsPackage"
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r7, r1)     // Catch:{ NoSuchMethodException -> 0x0028 }
            goto L_0x0035
        L_0x0028:
            boolean r0 = android.util.Log.isLoggable(r5, r2)
            if (r0 == 0) goto L_0x0034
            java.lang.String r0 = "No scheduleAsPackage method available, falling back to schedule"
            android.util.Log.e(r5, r0)
        L_0x0034:
            r0 = r6
        L_0x0035:
            com.google.android.gms.internal.gtm.zzfv.zza = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r4) goto L_0x0052
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r1 = "myUserId"
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch:{ NoSuchMethodException -> 0x0046 }
            java.lang.reflect.Method r6 = r0.getDeclaredMethod(r1, r3)     // Catch:{ NoSuchMethodException -> 0x0046 }
            goto L_0x0052
        L_0x0046:
            boolean r0 = android.util.Log.isLoggable(r5, r2)
            if (r0 == 0) goto L_0x0052
            java.lang.String r0 = "No myUserId method available"
            android.util.Log.e(r5, r0)
        L_0x0052:
            com.google.android.gms.internal.gtm.zzfv.zzb = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzfv.<clinit>():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0048  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int zza(android.content.Context r5, android.app.job.JobInfo r6, java.lang.String r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 121
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzfv.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
