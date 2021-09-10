package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.measurement.zzf;
import com.google.android.gms.internal.measurement.zzlr;

final class w3 implements Runnable {
    final /* synthetic */ zzf b;
    final /* synthetic */ ServiceConnection c;
    final /* synthetic */ x3 d;

    w3(x3 x3Var, zzf zzf, ServiceConnection serviceConnection) {
        this.d = x3Var;
        this.b = zzf;
        this.c = serviceConnection;
    }

    public final void run() {
        Bundle bundle;
        String str;
        x3 x3Var = this.d;
        z3 z3Var = x3Var.b;
        String str2 = x3Var.a;
        zzf zzf = this.b;
        ServiceConnection serviceConnection = this.c;
        z3Var.a.e().g();
        Bundle bundle2 = new Bundle();
        bundle2.putString("package_name", str2);
        try {
            bundle = zzf.zzd(bundle2);
            if (bundle == null) {
                z3Var.a.c().n().a("Install Referrer Service returned a null response");
                bundle = null;
            }
        } catch (Exception e) {
            z3Var.a.c().n().b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        z3Var.a.e().g();
        if (bundle != null) {
            long j = bundle.getLong("install_begin_timestamp_seconds", 0) * 1000;
            if (j == 0) {
                z3Var.a.c().q().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    z3Var.a.c().n().a("No referrer defined in Install Referrer response");
                } else {
                    z3Var.a.c().v().b("InstallReferrer API result", string);
                    h9 E = z3Var.a.E();
                    if (string.length() != 0) {
                        str = "?".concat(string);
                    } else {
                        str = new String("?");
                    }
                    Bundle f0 = E.f0(Uri.parse(str));
                    if (f0 == null) {
                        z3Var.a.c().n().a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = f0.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle.getLong("referrer_click_timestamp_seconds", 0) * 1000;
                            if (j2 == 0) {
                                z3Var.a.c().n().a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                f0.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == z3Var.a.y().k.a()) {
                            z3Var.a.c().v().a("Install Referrer campaign has already been logged");
                        } else {
                            zzlr.zzb();
                            if (!z3Var.a.x().u(null, v2.s0) || z3Var.a.j()) {
                                z3Var.a.y().k.b(j);
                                z3Var.a.c().v().b("Logging Install Referrer campaign from sdk with ", "referrer API");
                                f0.putString("_cis", "referrer API");
                                z3Var.a.D().Q("auto", "_cmp", f0);
                            }
                        }
                    }
                }
            }
        }
        a.b().c(z3Var.a.b(), serviceConnection);
    }
}
