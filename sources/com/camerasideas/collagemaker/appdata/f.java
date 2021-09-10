package com.camerasideas.collagemaker.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public class f {
    public static boolean a(Context context) {
        return g(context).getBoolean("EnableShowProCelebrate", true);
    }

    public static String b(Context context) {
        return g(context).getString("gpuModel", "");
    }

    public static int c(Context context) {
        return g(context).getInt("NotchHeight", 0);
    }

    public static int d(Context context) {
        return g(context).getInt("OpenTime", 0);
    }

    public static int e(Context context) {
        return g(context).getInt("getRateCount", 0);
    }

    public static int f(Context context) {
        return g(context).getInt("SavedCount", 0);
    }

    public static SharedPreferences g(Context context) {
        try {
            return context.getSharedPreferences("collagemaker", 0);
        } catch (NullPointerException e) {
            e.printStackTrace();
            SharedPreferences sharedPreferences = null;
            try {
                sharedPreferences = CollageMakerApplication.b().getSharedPreferences("collagemaker", 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (sharedPreferences == null) {
                em.h("PreferenceException", "getSharedPreferences return null," + context);
            }
            return sharedPreferences;
        }
    }

    public static String h(Context context) {
        return g(context).getString("uuid", "");
    }

    public static boolean i(Context context) {
        return g(context).getBoolean("HasDeniedStorageAccess", false);
    }

    public static void j(Context context, String str) {
        g(context).edit().putString("CountryCode", str).apply();
    }

    public static void k(Context context, boolean z) {
        ic.s(context, "HasUpdateDownloadData", z);
    }

    public static void l(Context context, boolean z) {
        ic.s(context, "isRated", z);
    }

    public static void m(Context context, int i) {
        g(context).edit().putInt("SavedCount", i).apply();
    }

    public static void n(Context context, int i) {
        g(context).edit().putInt("UserFlowState", i).apply();
    }
}
