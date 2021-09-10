package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.n;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class u5 implements Runnable {
    final /* synthetic */ Bundle b;
    final /* synthetic */ l6 c;

    u5(l6 l6Var, Bundle bundle) {
        this.c = l6Var;
        this.b = bundle;
    }

    public final void run() {
        l6 l6Var = this.c;
        Bundle bundle = this.b;
        l6Var.g();
        l6Var.i();
        Objects.requireNonNull(bundle, "null reference");
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        n.e(string);
        n.e(string2);
        Objects.requireNonNull(bundle.get("value"), "null reference");
        if (!l6Var.a.j()) {
            l6Var.a.c().v().a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkg zzkg = new zzkg(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzas I = l6Var.a.E().I(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0, true, false);
            l6Var.a.P().L(new zzaa(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), string2, zzkg, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), l6Var.a.E().I(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0, true, false), bundle.getLong("trigger_timeout"), I, bundle.getLong("time_to_live"), l6Var.a.E().I(bundle.getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
