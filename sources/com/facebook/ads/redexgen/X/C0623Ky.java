package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.util.Log;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ky  reason: case insensitive filesystem */
public final class C0623Ky {
    public static byte[] A00;
    public static String[] A01;

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-47, -17, -4, -75, 2, -82, 1, 2, -17, 0, 2, -82, -49, 3, -14, -9, -13, -4, -15, -13, -36, -13, 2, 5, -3, 0, -7, -49, -15, 2, -9, 4, -9, 2, 7, -68, -82, -37, -17, -7, -13, -82, 1, 3, 0, -13, -82, 2, -10, -17, 2, -82, -9, 2, -75, 1, -82, -9, -4, -82, 7, -3, 3, 0, -82, -49, -4, -14, 0, -3, -9, -14, -37, -17, -4, -9, -12, -13, 1, 2, -68, 6, -5, -6, -82, -12, -9, -6, -13, -68, -15, -19, -20, 32, 15, 20, 16, 25, 14, 16, -7, 16, 31, 34, 26, 29, 22, -26, -13, -28, -26, -24, -7, -18, -5, -18, -7, -2, 24, 37, 27, 41, 38, 32, 27, -27, 32, 37, 43, 28, 37, 43, -27, 24, 26, 43, 32, 38, 37, -27, 13, 0, -4, 14, -60, -47, -57, -43, -46, -52, -57, -111, -52, -47, -41, -56, -47, -41, -111, -58, -60, -41, -56, -54, -46, -43, -36, -111, -91, -75, -78, -70, -74, -92, -91, -81, -88, -32, -16, -19, -11, -15, -29, -16, -45, -48, -54, -23, -14, -17, -21, -12, -6, -38, -11, -15, -21, -12, -82, -70, -72, 121, -84, -71, -81, -67, -70, -76, -81, 121, -83, -67, -70, -62, -66, -80, -67, 121, -84, -69, -69, -73, -76, -82, -84, -65, -76, -70, -71, -86, -76, -81, -56, -44, -46, -109, -58, -45, -55, -41, -44, -50, -55, -109, -37, -54, -45, -55, -50, -45, -52, -47, -32, -45, -49, -30, -45, -51, -36, -45, -27, -51, -30, -49, -48, -25, -32, -19, -29, -21, -28, -15, -45, -24, -20, -28, -84, -72, -72, -76, -11, 1, 1, -3, -57, -68, -68, -3, -7, -18, 6, -69, -12, -4, -4, -12, -7, -14, -69, -16, -4, -6, -68, 0, 1, -4, -1, -14, -68, -18, -3, -3, 0, -68, -70, -58, -58, -62, -59, -68, -80, -63, -70, -76, -61, -26, -30, -41, -17, -92, -35, -27, -27, -35, -30, -37, -92, -39, -27, -29, -53, -66, -70, -52, -87, -50, -59, -70};
    }

    public static void A04() {
        A01 = new String[]{"HfGv3264Bq2TQ34NqRtE4P30TXR", "AZVpgJ8fi5FDz5AiC", "FCmmf0GU", "NGZF99o8OEHjBvmOxlLxN", "MEp80XUn5zKurDhCJ73", "hVp2plT6ulDLwck", "CErebgOhZelO8plRL7vU3", "v0a34uu5Y8rm3tpqkSr554RtUBdvL4ru"};
    }

    private Intent A00(Uri uri) {
        Intent intent = new Intent(A02(118, 26, 123), uri);
        intent.setComponent(null);
        if (Build.VERSION.SDK_INT >= 15) {
            intent.setSelector(null);
        }
        return intent;
    }

    private Intent A01(XJ xj, Uri uri) {
        Intent A002 = A00(uri);
        A002.addCategory(A02(144, 33, 39));
        A002.addFlags(268435456);
        A002.putExtra(A02(198, 34, 15), xj.getPackageName());
        A002.putExtra(A02(251, 14, 50), false);
        return A002;
    }

    private void A05(XJ xj, Uri uri) {
        C0616Kp.A0C(xj, A01(xj, uri));
    }

    private final void A06(XJ xj, Uri uri) throws C0622Kx {
        if (A0B(xj)) {
            Intent A012 = A01(xj, uri);
            A012.setPackage(A02(232, 19, 41));
            C0616Kp.A0C(xj, A012);
            return;
        }
        throw new C0622Kx();
    }

    private void A07(XJ xj, Uri uri, String str) {
        AdActivityIntent A04 = C0616Kp.A04(xj);
        A04.addFlags(268435456);
        A04.putExtra(A02(340, 8, 25), KK.A02);
        A04.putExtra(A02(177, 10, 66), uri.toString());
        A04.putExtra(A02(187, 11, 74), str);
        A04.putExtra(A02(265, 11, 67), System.currentTimeMillis());
        try {
            C0616Kp.A0A(xj, A04);
        } catch (ActivityNotFoundException e) {
            xj.A04().A8V(A02(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 11, 73), C03228e.A05, new C03238f(e));
            Log.e(A02(90, 17, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), A02(0, 90, 82), e);
        }
    }

    private final void A08(XJ xj, Uri uri, String str) {
        boolean A05 = J5.A05(xj);
        if (!A0A(uri) || !A05) {
            xj.A0A().A7h(A05);
            A05(xj, uri);
            return;
        }
        A07(xj, uri, str);
    }

    public static void A09(C0623Ky ky, XJ xj, Uri uri, String str) {
        boolean z;
        if (A0A(uri)) {
            if (A02(325, 15, 58).equals(uri.getHost())) {
                z = true;
                if (!A02(319, 6, 19).equals(uri.getScheme()) || z) {
                    ky.A06(xj, uri);
                } else {
                    ky.A08(xj, uri, str);
                    return;
                }
            }
        }
        z = false;
        if (!A02(319, 6, 19).equals(uri.getScheme())) {
        }
        try {
            ky.A06(xj, uri);
        } catch (C0622Kx unused) {
            ky.A08(xj, uri, str);
        }
    }

    public static boolean A0A(Uri uri) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 24) {
            boolean isCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            String[] strArr = A01;
            if (strArr[1].length() != strArr[4].length()) {
                A01[7] = "9DaYNTGnU6m41BFJKxw5hEDOoLHVmNBK";
                if (!isCleartextTrafficPermitted && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(uri.getHost())) {
                    z = false;
                    String scheme = uri.getScheme();
                    if ((z || !A02(276, 4, 8).equalsIgnoreCase(scheme)) && !A02(314, 5, 22).equalsIgnoreCase(scheme)) {
                        return false;
                    }
                    return true;
                }
            } else {
                throw new RuntimeException();
            }
        }
        z = true;
        String scheme2 = uri.getScheme();
        if (z) {
        }
        return false;
    }

    private boolean A0B(XJ xj) {
        for (ResolveInfo appInfo : xj.getPackageManager().queryIntentActivities(new Intent(A02(118, 26, 123), Uri.parse(A02(280, 34, 81))), 0)) {
            if (appInfo.activityInfo.applicationInfo.packageName.equals(A02(232, 19, 41))) {
                return true;
            }
        }
        return false;
    }
}
