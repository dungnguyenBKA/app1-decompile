package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class b5 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ long e;
    final /* synthetic */ c5 f;

    b5(c5 c5Var, String str, String str2, String str3, long j) {
        this.f = c5Var;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = j;
    }

    public final void run() {
        String str = this.b;
        if (str == null) {
            this.f.b.u().O().x(this.c, null);
            return;
        }
        this.f.b.u().O().x(this.c, new r6(this.d, str, this.e));
    }
}
