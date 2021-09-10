package androidx.core.content;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;

public class a {
    private static final Object a = new Object();
    public static final /* synthetic */ int b = 0;

    public static int a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    public static int b(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColor(i);
        }
        return context.getResources().getColor(i);
    }

    public static Drawable c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getDrawable(i);
        }
        return context.getResources().getDrawable(i);
    }
}
