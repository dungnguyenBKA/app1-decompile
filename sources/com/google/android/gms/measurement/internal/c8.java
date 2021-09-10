package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;

/* access modifiers changed from: package-private */
public final /* synthetic */ class c8 implements Runnable {
    private final f8 b;
    private final i3 c;
    private final JobParameters d;

    c8(f8 f8Var, i3 i3Var, JobParameters jobParameters) {
        this.b = f8Var;
        this.c = i3Var;
        this.d = jobParameters;
    }

    public final void run() {
        this.b.h(this.c, this.d);
    }
}
