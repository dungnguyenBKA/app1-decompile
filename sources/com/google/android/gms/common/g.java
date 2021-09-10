package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.core.app.b;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o0;
import com.google.android.gms.common.util.c;
import com.vungle.warren.error.VungleException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import photoeditor.cutout.backgrounderaser.R;

public class g {
    static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;
    static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = "com.google.android.play.games";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static boolean zza = false;
    private static boolean zzb = false;
    private static boolean zzc = false;
    private static boolean zzd = false;
    private static final AtomicBoolean zze = new AtomicBoolean();

    g() {
    }

    @Deprecated
    public static void cancelAvailabilityErrorNotifications(Context context) {
        if (!sCanceledAvailabilityNotification.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
                }
            } catch (SecurityException unused) {
            }
        }
    }

    public static void enableUsingApkIndependentContext() {
        zze.set(true);
    }

    @Deprecated
    public static void ensurePlayServicesAvailable(Context context, int i) {
        int e = d.c().e(context, i);
        if (e != 0) {
            Intent a = d.c().a(context, e, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(e);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (a == null) {
                throw new e(e);
            }
            throw new f(e, "Google Play Services not available", a);
        }
    }

    @Deprecated
    public static int getApkVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    public static int getClientVersion(Context context) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        n.j(true);
        try {
            packageInfo = yv.a(context).e(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return d.c().b(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.m0(i);
    }

    @Deprecated
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return d.c().a(null, i, null);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean honorsDebugCertificates(Context context) {
        if (!zzd) {
            try {
                PackageInfo e = yv.a(context).e("com.google.android.gms", 64);
                h.a(context);
                if (e == null || h.e(e, false) || !h.e(e, true)) {
                    zzc = false;
                } else {
                    zzc = true;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
            } finally {
                zzd = true;
            }
        }
        return zzc || !"user".equals(Build.TYPE);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Deprecated
    public static boolean isGooglePlayServicesUid(Context context, int i) {
        return b.e0(context, i);
    }

    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zza(context, "com.google.android.gms");
        }
        return false;
    }

    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(Context context, int i) {
        if (i == 9) {
            return zza(context, "com.android.vending");
        }
        return false;
    }

    @TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
    public static boolean isRestrictedUserProfile(Context context) {
        Bundle applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @Deprecated
    public static boolean isSidewinderDevice(Context context) {
        return c.f(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    @Deprecated
    public static boolean uidHasPackageName(Context context, int i, String str) {
        return yv.a(context).h(i, str);
    }

    private static int zza(Context context, boolean z, int i) {
        int i2;
        n.a(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            h.a(context);
            if (!h.e(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
                return 9;
            }
            if (z) {
                Objects.requireNonNull(packageInfo, "null reference");
                if (!h.e(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    return 9;
                }
            }
            int i3 = packageInfo2.versionCode;
            int i4 = -1;
            if (i3 == -1) {
                i2 = -1;
            } else {
                i2 = i3 / AdError.NETWORK_ERROR_CODE;
            }
            if (i != -1) {
                i4 = i / AdError.NETWORK_ERROR_CODE;
            }
            if (i2 < i4) {
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
                sb.append("Google Play services out of date for ");
                sb.append(packageName);
                sb.append(".  Requires ");
                sb.append(i);
                sb.append(" but found ");
                sb.append(i3);
                Log.w("GooglePlayServicesUtil", sb.toString());
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e);
                    return 1;
                }
            }
            if (!applicationInfo.enabled) {
                return 3;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        try {
            context.getResources().getString(R.string.b6);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !zze.get()) {
            int a = o0.a(context);
            if (a != 0) {
                int i2 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                if (a != i2) {
                    StringBuilder sb = new StringBuilder(320);
                    sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                    sb.append(i2);
                    sb.append(" but found ");
                    sb.append(a);
                    sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        return zza(context, !c.h(context) && !c.k(context), i);
    }

    @TargetApi(VungleException.SERVER_ERROR)
    static boolean zza(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (c.b()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            if (equals) {
                return applicationInfo.enabled;
            }
            return applicationInfo.enabled && !isRestrictedUserProfile(context);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
    }
}
