package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzll;

/* access modifiers changed from: package-private */
public final class n8 {
    final /* synthetic */ o8 a;

    n8(o8 o8Var) {
        this.a = o8Var;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.a.g();
        if (this.a.a.y().v(this.a.a.a().a())) {
            this.a.a.y().q.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.a.a.c().v().a("Detected application was in foreground");
                c(this.a.a.a().a(), false);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(long j, boolean z) {
        this.a.g();
        this.a.r();
        if (this.a.a.y().v(j)) {
            this.a.a.y().q.b(true);
        }
        this.a.a.y().t.b(j);
        if (this.a.a.y().q.a()) {
            c(j, z);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c(long j, boolean z) {
        this.a.g();
        if (this.a.a.j()) {
            this.a.a.y().t.b(j);
            this.a.a.c().v().b("Session started, time", Long.valueOf(this.a.a.a().b()));
            Long valueOf = Long.valueOf(j / 1000);
            this.a.a.D().o("auto", "_sid", valueOf, j);
            this.a.a.y().q.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (this.a.a.x().u(null, v2.j0) && z) {
                bundle.putLong("_aib", 1);
            }
            this.a.a.D().R("auto", "_s", j, bundle);
            zzll.zzb();
            if (this.a.a.x().u(null, v2.o0)) {
                String a2 = this.a.a.y().y.a();
                if (!TextUtils.isEmpty(a2)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_ffr", a2);
                    this.a.a.D().R("auto", "_ssr", j, bundle2);
                }
            }
        }
    }
}
