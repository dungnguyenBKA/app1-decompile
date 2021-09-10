package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.e;

public final class GooglePlayServicesUtil extends g {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return g.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return g.getErrorString(i);
    }

    public static Context getRemoteContext(Context context) {
        return g.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return g.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return g.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return g.isUserRecoverableError(i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        c g = c.g();
        if (g.isPlayServicesPossiblyUpdating(context, i) || g.isPlayStorePossiblyUpdating(context, i)) {
            new c.a(context).sendEmptyMessageDelayed(1, 120000);
        } else {
            g.i(context, i);
        }
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        if (g.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        return c.g().f(activity, i, i2, onCancelListener);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        return g.isGooglePlayServicesAvailable(context, i);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        if (g.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        c g = c.g();
        if (fragment == null) {
            return g.h(activity, i, i2, onCancelListener);
        }
        Dialog j = c.j(activity, i, e.b(fragment, c.g().a(activity, i, "d"), i2), onCancelListener);
        if (j == null) {
            return false;
        }
        c.k(activity, j, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }
}
