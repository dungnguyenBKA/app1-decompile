package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class r5 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ long d;
    final /* synthetic */ Bundle e;
    final /* synthetic */ boolean f;
    final /* synthetic */ boolean g;
    final /* synthetic */ boolean h;
    final /* synthetic */ String i;
    final /* synthetic */ l6 j;

    r5(l6 l6Var, String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.j = l6Var;
        this.b = str;
        this.c = str2;
        this.d = j2;
        this.e = bundle;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = str3;
    }

    public final void run() {
        this.j.S(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }
}
