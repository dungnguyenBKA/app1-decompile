package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* access modifiers changed from: package-private */
/* renamed from: v6  reason: default package */
public class v6 {
    private static volatile SharedPreferences a;

    v6() {
    }

    public static int a(Context context, int i) {
        return c(context).getInt("sp.key.keyboard.height", i);
    }

    public static boolean b(Context context, int i) {
        return c(context).edit().putInt("sp.key.keyboard.height", i).commit();
    }

    private static SharedPreferences c(Context context) {
        if (a == null) {
            synchronized (v6.class) {
                if (a == null) {
                    a = context.getSharedPreferences("keyboard.common", 0);
                }
            }
        }
        return a;
    }
}
