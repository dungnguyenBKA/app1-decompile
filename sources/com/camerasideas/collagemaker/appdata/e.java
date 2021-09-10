package com.camerasideas.collagemaker.appdata;

import android.app.Activity;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public class e {
    public static boolean a = false;
    public static Activity b;
    public static Activity c;
    public static ThreadLocal<Integer> d = new ThreadLocal<>();
    private static int e = 0;
    public static final boolean f = c2.w(CollageMakerApplication.b());

    public static int a() {
        return e;
    }

    public static boolean b() {
        return e == 4;
    }

    public static boolean c() {
        return e == 1;
    }

    public static boolean d() {
        return e == 2;
    }

    public static void e(int i) {
        e = i;
    }
}
