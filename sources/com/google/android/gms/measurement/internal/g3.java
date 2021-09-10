package com.google.android.gms.measurement.internal;

public final class g3 {
    private final int a;
    private final boolean b;
    private final boolean c;
    final /* synthetic */ i3 d;

    g3(i3 i3Var, int i, boolean z, boolean z2) {
        this.d = i3Var;
        this.a = i;
        this.b = z;
        this.c = z2;
    }

    public final void a(String str) {
        this.d.x(this.a, this.b, this.c, str, null, null, null);
    }

    public final void b(String str, Object obj) {
        this.d.x(this.a, this.b, this.c, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        this.d.x(this.a, this.b, this.c, str, obj, obj2, null);
    }

    public final void d(String str, Object obj, Object obj2, Object obj3) {
        this.d.x(this.a, this.b, this.c, str, obj, obj2, obj3);
    }
}
