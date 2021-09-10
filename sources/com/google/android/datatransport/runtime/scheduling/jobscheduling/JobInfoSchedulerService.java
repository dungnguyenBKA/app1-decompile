package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import defpackage.it;

public class JobInfoSchedulerService extends JobService {
    public static final /* synthetic */ int b = 0;

    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        mt.c(getApplicationContext());
        it.a a = it.a();
        a.b(string);
        a.d(rv.b(i));
        if (string2 != null) {
            a.c(Base64.decode(string2, 0));
        }
        mt.a().b().f(a.a(), i2, f.a(this, jobParameters));
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
