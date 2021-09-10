package com.vungle.warren.analytics;

import com.vungle.warren.tasks.AnalyticsJob;
import com.vungle.warren.tasks.JobRunner;

public class JobDelegateAnalytics implements AdAnalytics {
    private final JobRunner jobRunner;

    public JobDelegateAnalytics(JobRunner jobRunner2) {
        this.jobRunner = jobRunner2;
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] ping(String[] strArr) {
        this.jobRunner.execute(AnalyticsJob.makeJob(1, null, strArr));
        return new String[0];
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void ri(s60 s60) {
        this.jobRunner.execute(AnalyticsJob.makeJob(0, s60.toString(), null));
    }
}
