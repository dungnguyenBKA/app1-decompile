package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* access modifiers changed from: package-private */
public final class a6 implements g9 {
    final /* synthetic */ l6 a;

    a6(l6 l6Var) {
        this.a = l6Var;
    }

    @Override // com.google.android.gms.measurement.internal.g9
    public final void zza(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.a.Q("auto", "_err", bundle);
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }
}
