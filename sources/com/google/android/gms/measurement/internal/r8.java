package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.internal.measurement.zzg;
import com.vungle.warren.error.VungleException;

public final class r8 extends s8 {
    private final AlarmManager d = ((AlarmManager) this.a.b().getSystemService("alarm"));
    private l e;
    private Integer f;

    protected r8(b9 b9Var) {
        super(b9Var);
    }

    private final l n() {
        if (this.e == null) {
            this.e = new q8(this, this.b.u());
        }
        return this.e;
    }

    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    private final void o() {
        JobScheduler jobScheduler = (JobScheduler) this.a.b().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(p());
        }
    }

    private final int p() {
        String str;
        if (this.f == null) {
            String valueOf = String.valueOf(this.a.b().getPackageName());
            if (valueOf.length() != 0) {
                str = "measurement".concat(valueOf);
            } else {
                str = new String("measurement");
            }
            this.f = Integer.valueOf(str.hashCode());
        }
        return this.f.intValue();
    }

    private final PendingIntent q() {
        Context b = this.a.b();
        return PendingIntent.getBroadcast(b, 0, new Intent().setClassName(b, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            alarmManager.cancel(q());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        o();
        return false;
    }

    public final void l(long j) {
        i();
        this.a.zzas();
        Context b = this.a.b();
        if (!b4.a(b)) {
            this.a.c().u().a("Receiver not registered/enabled");
        }
        if (!h9.C(b)) {
            this.a.c().u().a("Service not registered/enabled");
        }
        m();
        this.a.c().v().b("Scheduling upload, millis", Long.valueOf(j));
        long b2 = this.a.a().b() + j;
        this.a.x();
        if (j < Math.max(0L, v2.x.b(null).longValue()) && !n().c()) {
            n().b(j);
        }
        this.a.zzas();
        if (Build.VERSION.SDK_INT >= 24) {
            Context b3 = this.a.b();
            ComponentName componentName = new ComponentName(b3, "com.google.android.gms.measurement.AppMeasurementJobService");
            int p = p();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            zzg.zza(b3, new JobInfo.Builder(p, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
            return;
        }
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            this.a.x();
            alarmManager.setInexactRepeating(2, b2, Math.max(v2.s.b(null).longValue(), j), q());
        }
    }

    public final void m() {
        i();
        this.a.c().v().a("Unscheduling upload");
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            alarmManager.cancel(q());
        }
        n().d();
        if (Build.VERSION.SDK_INT >= 24) {
            o();
        }
    }
}
