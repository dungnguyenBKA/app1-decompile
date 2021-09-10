package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class q8 extends l {
    final /* synthetic */ r8 e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    q8(r8 r8Var, f5 f5Var) {
        super(f5Var);
        this.e = r8Var;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final void a() {
        this.e.m();
        this.e.a.c().v().a("Starting upload from DelayedRunnable");
        this.e.b.j();
    }
}
