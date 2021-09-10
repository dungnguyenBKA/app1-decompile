package defpackage;

import android.content.Context;

/* renamed from: s5  reason: default package */
public class s5 {
    private static s5 e;
    private m5 a;
    private n5 b;
    private q5 c;
    private r5 d;

    private s5(Context context, m6 m6Var) {
        Context applicationContext = context.getApplicationContext();
        this.a = new m5(applicationContext, m6Var);
        this.b = new n5(applicationContext, m6Var);
        this.c = new q5(applicationContext, m6Var);
        this.d = new r5(applicationContext, m6Var);
    }

    public static synchronized s5 c(Context context, m6 m6Var) {
        s5 s5Var;
        synchronized (s5.class) {
            if (e == null) {
                e = new s5(context, m6Var);
            }
            s5Var = e;
        }
        return s5Var;
    }

    public m5 a() {
        return this.a;
    }

    public n5 b() {
        return this.b;
    }

    public q5 d() {
        return this.c;
    }

    public r5 e() {
        return this.d;
    }
}
