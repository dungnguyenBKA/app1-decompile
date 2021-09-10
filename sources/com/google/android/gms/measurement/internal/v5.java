package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.n;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class v5 implements Runnable {
    final /* synthetic */ Bundle b;
    final /* synthetic */ l6 c;

    v5(l6 l6Var, Bundle bundle) {
        this.c = l6Var;
        this.b = bundle;
    }

    public final void run() {
        l6 l6Var = this.c;
        Bundle bundle = this.b;
        l6Var.g();
        l6Var.i();
        Objects.requireNonNull(bundle, "null reference");
        n.e(bundle.getString("name"));
        if (!l6Var.a.j()) {
            l6Var.a.c().v().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            l6Var.a.P().L(new zzaa(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), bundle.getString("origin"), new zzkg(bundle.getString("name"), 0, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), l6Var.a.E().I(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
