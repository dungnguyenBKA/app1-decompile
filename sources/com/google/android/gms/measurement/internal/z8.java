package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* access modifiers changed from: package-private */
public final class z8 implements g9 {
    final /* synthetic */ b9 a;

    z8(b9 b9Var) {
        this.a = b9Var;
    }

    @Override // com.google.android.gms.measurement.internal.g9
    public final void zza(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.a.j.c().n().a("AppId not known when logging error event");
        } else {
            this.a.e().q(new y8(this, str, bundle));
        }
    }
}
