package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import defpackage.cw;

/* access modifiers changed from: package-private */
public final class e implements cw.a {
    final /* synthetic */ f a;

    public e(f fVar) {
        this.a = fVar;
    }

    @Override // com.google.android.gms.measurement.internal.k5
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (str != null && !str.equals("crash") && b.c(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            this.a.a.a(3, bundle2);
        }
    }
}
