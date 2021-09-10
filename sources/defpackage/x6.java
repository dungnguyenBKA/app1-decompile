package defpackage;

import android.content.Context;

/* renamed from: x6  reason: default package */
public class x6 {
    private static boolean a = false;
    private static int b = 50;

    public static synchronized int a(Context context) {
        int i;
        int identifier;
        synchronized (x6.class) {
            if (!a && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                b = dimensionPixelSize;
                a = true;
                String.format("Get status bar height %d", Integer.valueOf(dimensionPixelSize));
            }
            i = b;
        }
        return i;
    }
}
