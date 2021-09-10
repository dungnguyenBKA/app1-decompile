package inshot.collage.adconfig;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;

@SuppressLint({"StaticFieldLeak"})
public final class a {
    public static Context a;
    public static fd0 b;
    public static b c;
    public static id0 d;
    private static Activity e;
    private static boolean f;

    public static final id0 a() {
        id0 id0 = d;
        if (id0 != null) {
            return id0;
        }
        gg0.j("app");
        throw null;
    }

    public static final boolean b() {
        b bVar = c;
        if (bVar != null) {
            return bVar.c();
        }
        gg0.j("callback");
        throw null;
    }

    public static final Context c() {
        Context context = a;
        if (context != null) {
            return context;
        }
        gg0.j("context");
        throw null;
    }

    public static final Activity d() {
        return e;
    }

    public static final void e(Context context, fd0 fd0, b bVar, boolean z) {
        id0 id0;
        gg0.e(context, "context");
        gg0.e(fd0, "adApp");
        gg0.e(bVar, "callback");
        a = context;
        b = fd0;
        c = bVar;
        f = z;
        o.b(!z);
        o.c(z);
        switch (fd0.ordinal()) {
            case 0:
                id0 = new qd0();
                break;
            case 1:
                id0 = new kd0();
                break;
            case 2:
                id0 = new md0();
                break;
            case 3:
                id0 = new od0();
                break;
            case 4:
                id0 = new nd0();
                break;
            case 5:
                id0 = new ld0();
                break;
            case 6:
                id0 = new pd0();
                break;
            case 7:
                id0 = new hd0();
                break;
            case 8:
                id0 = new jd0();
                break;
            default:
                throw new yf0();
        }
        d = id0;
        d.h(context, j.Picker, 0);
        d.h(context, j.ResultPage, 0);
    }

    public static final boolean f() {
        return f;
    }

    public static final void g(Activity activity) {
        e = activity;
    }
}
