package com.google.android.gms.measurement.internal;

import android.util.Log;

/* access modifiers changed from: package-private */
public final class f3 implements Runnable {
    final /* synthetic */ int b;
    final /* synthetic */ String c;
    final /* synthetic */ Object d;
    final /* synthetic */ Object e;
    final /* synthetic */ Object f;
    final /* synthetic */ i3 g;

    f3(i3 i3Var, int i, String str, Object obj, Object obj2, Object obj3) {
        this.g = i3Var;
        this.b = i;
        this.c = str;
        this.d = obj;
        this.e = obj2;
        this.f = obj3;
    }

    public final void run() {
        v3 y = this.g.a.y();
        if (y.j()) {
            if (this.g.c == 0) {
                if (this.g.a.x().o()) {
                    i3 i3Var = this.g;
                    i3Var.a.zzas();
                    i3Var.c = 'C';
                } else {
                    i3 i3Var2 = this.g;
                    i3Var2.a.zzas();
                    i3Var2.c = 'c';
                }
            }
            if (this.g.d < 0) {
                i3 i3Var3 = this.g;
                i3Var3.a.x().n();
                i3Var3.d = 39000;
            }
            char charAt = "01VDIWEA?".charAt(this.b);
            char c2 = this.g.c;
            long j = this.g.d;
            String z = i3.z(true, this.c, this.d, this.e, this.f);
            StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 24);
            sb.append("2");
            sb.append(charAt);
            sb.append(c2);
            sb.append(j);
            sb.append(":");
            sb.append(z);
            String sb2 = sb.toString();
            if (sb2.length() > 1024) {
                sb2 = this.c.substring(0, 1024);
            }
            t3 t3Var = y.d;
            if (t3Var != null) {
                t3Var.a(sb2, 1);
                return;
            }
            return;
        }
        Log.println(6, this.g.y(), "Persisted config not initialized. Not logging error/warn");
    }
}
