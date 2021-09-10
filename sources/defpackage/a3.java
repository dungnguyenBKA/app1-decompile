package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* renamed from: a3  reason: default package */
public final class a3 {
    private Object a;

    private a3(Object obj) {
        this.a = obj;
    }

    public static a3 b(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new a3(PointerIcon.getSystemIcon(context, i));
        }
        return new a3(null);
    }

    public Object a() {
        return this.a;
    }
}
