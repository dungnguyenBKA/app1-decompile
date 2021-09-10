package defpackage;

import android.content.Context;
import android.os.Handler;
import java.util.Objects;

/* renamed from: ba0  reason: default package */
public class ba0 implements h90 {
    private static ba0 f;
    private float a = 0.0f;
    private final j90 b;
    private final g90 c;
    private i90 d;
    private v90 e;

    public ba0(j90 j90, g90 g90) {
        this.b = j90;
        this.c = g90;
    }

    public static ba0 a() {
        if (f == null) {
            f = new ba0(new j90(), new g90());
        }
        return f;
    }

    public void b(float f2) {
        this.a = f2;
        if (this.e == null) {
            this.e = v90.a();
        }
        for (u90 u90 : this.e.e()) {
            aa0.a().c(u90.i().i(), f2);
        }
    }

    public void c(Context context) {
        Objects.requireNonNull(this.c);
        f90 f90 = new f90();
        j90 j90 = this.b;
        Handler handler = new Handler();
        Objects.requireNonNull(j90);
        this.d = new i90(handler, context, f90, this);
    }

    public void d() {
        for (u90 u90 : v90.a().c()) {
            u90.i().f(true);
        }
        na0.i().b();
        this.d.a();
    }

    public void e() {
        na0.i().d();
        w90.a().b();
        this.d.b();
    }

    public float f() {
        return this.a;
    }
}
