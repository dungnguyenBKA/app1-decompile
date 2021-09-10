package com.vungle.warren.tasks;

import android.os.Bundle;
import com.vungle.warren.analytics.AdAnalytics;

public class AnalyticsJob implements Job {
    private static final long DEFAULT_DELAY = 2000;
    public static final String EXTRA_ACTION = "action_extra";
    private static final String EXTRA_BODY = "extra_body";
    private static final String EXTRA_URLS = "extra_urls";
    public static final String TAG = "AnalyticsJob";
    private final AdAnalytics adAnalytics;

    public @interface Action {
        public static final int PING = 1;
        public static final int RI = 0;
    }

    public AnalyticsJob(AdAnalytics adAnalytics2) {
        this.adAnalytics = adAnalytics2;
    }

    public static JobInfo makeJob(@Action int i, String str, String[] strArr) {
        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_ACTION, i);
        bundle.putString(EXTRA_BODY, str);
        bundle.putStringArray(EXTRA_URLS, strArr);
        return new JobInfo(TAG).setUpdateCurrent(false).setExtras(bundle).setReschedulePolicy(2000, 1).setRequiredNetworkType(1).setPriority(5);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        String[] stringArray;
        int i = bundle.getInt(EXTRA_ACTION, -1);
        if (i == 0) {
            this.adAnalytics.ri(((p60) new j60().c(bundle.getString(EXTRA_BODY), p60.class)).e());
            return 0;
        } else if (i != 1 || (stringArray = bundle.getStringArray(EXTRA_URLS)) == null) {
            return 0;
        } else {
            String[] ping = this.adAnalytics.ping(stringArray);
            if (ping.length == 0) {
                return 0;
            }
            bundle.putStringArray(EXTRA_URLS, ping);
            return 2;
        }
    }
}
