package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;

/* renamed from: y90  reason: default package */
public class y90 {
    @SuppressLint({"StaticFieldLeak"})
    private static y90 b = new y90();
    private Context a;

    private y90() {
    }

    public static y90 a() {
        return b;
    }

    public void b(Context context) {
        this.a = context.getApplicationContext();
    }

    public Context c() {
        return this.a;
    }
}
