package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;

final /* synthetic */ class f implements Runnable {
    private final JobInfoSchedulerService b;
    private final JobParameters c;

    private f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.b = jobInfoSchedulerService;
        this.c = jobParameters;
    }

    public static Runnable a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new f(jobInfoSchedulerService, jobParameters);
    }

    public void run() {
        JobInfoSchedulerService jobInfoSchedulerService = this.b;
        JobParameters jobParameters = this.c;
        int i = JobInfoSchedulerService.b;
        jobInfoSchedulerService.jobFinished(jobParameters, false);
    }
}
