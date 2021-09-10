package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.google.android.gms.common.stats.a;
import java.util.List;

public final class z3 {
    final j4 a;

    z3(j4 j4Var) {
        this.a = j4Var;
    }

    /* access modifiers changed from: protected */
    public final void a(String str) {
        if (str == null || str.isEmpty()) {
            this.a.c().r().a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.a.e().g();
        if (!b()) {
            this.a.c().t().a("Install Referrer Reporter is not available");
            return;
        }
        x3 x3Var = new x3(this, str);
        this.a.e().g();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.a.b().getPackageManager();
        if (packageManager == null) {
            this.a.c().r().a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.a.c().t().a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (serviceInfo.name == null || !"com.android.vending".equals(str2) || !b()) {
                this.a.c().q().a("Play Store version 8.3.73 or higher required for Install Referrer");
                return;
            }
            try {
                this.a.c().v().b("Install Referrer Service is", true != a.b().a(this.a.b(), new Intent(intent), x3Var, 1) ? "not available" : "available");
            } catch (Exception e) {
                this.a.c().n().b("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        try {
            xv a2 = yv.a(this.a.b());
            if (a2 == null) {
                this.a.c().v().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            } else if (a2.e("com.android.vending", 128).versionCode >= 80837300) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            this.a.c().v().b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
