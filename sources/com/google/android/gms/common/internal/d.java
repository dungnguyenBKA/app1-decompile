package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.c;
import com.vungle.warren.error.VungleException;
import javax.annotation.concurrent.GuardedBy;
import photoeditor.cutout.backgrounderaser.R;

public final class d {
    @GuardedBy("sCache")
    private static final e0<String, String> a = new e0<>();

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return yv.a(context).d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context, int i) {
        Resources resources = context.getResources();
        String a2 = a(context);
        if (i == 1) {
            return resources.getString(R.string.b2, a2);
        } else if (i != 2) {
            if (i == 3) {
                return resources.getString(R.string.az, a2);
            } else if (i == 5) {
                return g(context, "common_google_play_services_invalid_account_text", a2);
            } else {
                if (i == 7) {
                    return g(context, "common_google_play_services_network_error_text", a2);
                }
                if (i == 9) {
                    return resources.getString(R.string.b7, a2);
                } else if (i == 20) {
                    return g(context, "common_google_play_services_restricted_profile_text", a2);
                } else {
                    switch (i) {
                        case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                            return g(context, "common_google_play_services_api_unavailable_text", a2);
                        case 17:
                            return g(context, "common_google_play_services_sign_in_failed_text", a2);
                        case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                            return resources.getString(R.string.ba, a2);
                        default:
                            return resources.getString(R.string.b6, a2);
                    }
                }
            }
        } else if (c.h(context)) {
            return resources.getString(R.string.bb);
        } else {
            return resources.getString(R.string.b9, a2);
        }
    }

    public static String c(Context context, int i) {
        if (i == 6) {
            return g(context, "common_google_play_services_resolution_required_text", a(context));
        }
        return b(context, i);
    }

    public static String d(Context context, int i) {
        String str;
        if (i == 6) {
            str = f(context, "common_google_play_services_resolution_required_title");
        } else {
            str = e(context, i);
        }
        return str == null ? context.getResources().getString(R.string.b5) : str;
    }

    public static String e(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.b3);
            case 2:
                return resources.getString(R.string.b_);
            case 3:
                return resources.getString(R.string.b0);
            case 4:
            case 6:
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return f(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return f(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            case 13:
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return f(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return f(context, "common_google_play_services_restricted_profile_title");
        }
    }

    private static String f(Context context, String str) {
        e0<String, String> e0Var = a;
        synchronized (e0Var) {
            String orDefault = e0Var.getOrDefault(str, null);
            if (orDefault != null) {
                return orDefault;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
                return null;
            }
            e0Var.put(str, string);
            return string;
        }
    }

    private static String g(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String f = f(context, str);
        if (f == null) {
            f = resources.getString(R.string.b6);
        }
        return String.format(resources.getConfiguration().locale, f, str2);
    }
}
