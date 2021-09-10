package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class i7 extends l {
    final /* synthetic */ z7 e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    i7(z7 z7Var, f5 f5Var) {
        super(f5Var);
        this.e = z7Var;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final void a() {
        z7 z7Var = this.e;
        z7Var.g();
        if (z7Var.G()) {
            z7Var.a.c().v().a("Inactivity, disconnecting from the service");
            z7Var.s();
        }
    }
}
