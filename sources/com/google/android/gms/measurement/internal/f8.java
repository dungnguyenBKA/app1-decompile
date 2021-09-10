package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.e8;
import com.vungle.warren.error.VungleException;

public final class f8<T extends Context & e8> {
    private final T a;

    public f8(T t) {
        this.a = t;
    }

    private final i3 j() {
        return j4.g(this.a, null, null).c();
    }

    public final void a() {
        j4.g(this.a, null, null).c().v().a("Local AppMeasurementService is starting up");
    }

    public final void b() {
        j4.g(this.a, null, null).c().v().a("Local AppMeasurementService is shutting down");
    }

    public final int c(Intent intent, int i, int i2) {
        i3 c = j4.g(this.a, null, null).c();
        if (intent == null) {
            c.q().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        c.v().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            b8 b8Var = new b8(this, i2, c, intent);
            b9 D = b9.D(this.a);
            D.e().q(new d8(D, b8Var));
        }
        return 2;
    }

    public final IBinder d(Intent intent) {
        if (intent == null) {
            j().n().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new c5(b9.D(this.a));
        }
        j().q().b("onBind received unknown action", action);
        return null;
    }

    public final boolean e(Intent intent) {
        if (intent == null) {
            j().n().a("onUnbind called with null intent");
            return true;
        }
        j().v().b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    public final boolean f(JobParameters jobParameters) {
        i3 c = j4.g(this.a, null, null).c();
        String string = jobParameters.getExtras().getString("action");
        c.v().b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        c8 c8Var = new c8(this, c, jobParameters);
        b9 D = b9.D(this.a);
        D.e().q(new d8(D, c8Var));
        return true;
    }

    public final void g(Intent intent) {
        if (intent == null) {
            j().n().a("onRebind called with null intent");
            return;
        }
        j().v().b("onRebind called. action", intent.getAction());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void h(i3 i3Var, JobParameters jobParameters) {
        i3Var.v().a("AppMeasurementJobService processed last upload request.");
        this.a.a(jobParameters, false);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void i(int i, i3 i3Var, Intent intent) {
        if (this.a.zza(i)) {
            i3Var.v().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            j().v().a("Completed wakeful intent.");
            this.a.zzc(intent);
        }
    }
}
