package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.g5;
import com.google.android.gms.measurement.internal.j;
import defpackage.cw;

/* access modifiers changed from: package-private */
public final class c implements cw.a {
    final /* synthetic */ d a;

    public c(d dVar) {
        this.a = dVar;
    }

    @Override // com.google.android.gms.measurement.internal.k5
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (this.a.a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            int i = b.g;
            String d = j.d(str2, g5.c, g5.a);
            if (d != null) {
                str2 = d;
            }
            bundle2.putString("events", str2);
            this.a.b.a(2, bundle2);
        }
    }
}
