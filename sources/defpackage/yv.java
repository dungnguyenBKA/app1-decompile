package defpackage;

import android.content.Context;

/* renamed from: yv  reason: default package */
public class yv {
    private static yv b = new yv();
    private xv a = null;

    public static xv a(Context context) {
        xv xvVar;
        yv yvVar = b;
        synchronized (yvVar) {
            if (yvVar.a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                yvVar.a = new xv(context);
            }
            xvVar = yvVar.a;
        }
        return xvVar;
    }
}
