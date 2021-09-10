package com.vungle.warren;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.vungle.warren.tasks.JobCreator;
import com.vungle.warren.tasks.JobInfo;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.runnable.JobRunnable;
import com.vungle.warren.tasks.utility.ThreadPriorityHelper;
import com.vungle.warren.utility.NetworkProvider;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public class VungleJobRunner implements JobRunner {
    private static final String TAG = VungleJobRunner.class.getSimpleName();
    private static Handler handler = new Handler(Looper.getMainLooper());
    private JobCreator creator;
    private Executor executor;
    private final NetworkProvider.NetworkListener networkListener = new NetworkProvider.NetworkListener() {
        /* class com.vungle.warren.VungleJobRunner.AnonymousClass1 */

        @Override // com.vungle.warren.utility.NetworkProvider.NetworkListener
        public void onChanged(int i) {
            VungleJobRunner.this.executePendingJobs();
        }
    };
    private final NetworkProvider networkProvider;
    private long nextCheck = Long.MAX_VALUE;
    private List<PendingJob> pendingJobs;
    private Runnable pendingRunnable;
    private final ThreadPriorityHelper threadPriorityHelper;

    /* access modifiers changed from: private */
    public static class PendingJob {
        JobInfo info;
        private final long uptimeMillis;

        PendingJob(long j, JobInfo jobInfo) {
            this.uptimeMillis = j;
            this.info = jobInfo;
        }
    }

    private static class PendingRunnable implements Runnable {
        WeakReference<VungleJobRunner> runner;

        PendingRunnable(WeakReference<VungleJobRunner> weakReference) {
            this.runner = weakReference;
        }

        public void run() {
            VungleJobRunner vungleJobRunner = this.runner.get();
            if (vungleJobRunner != null) {
                vungleJobRunner.executePendingJobs();
            }
        }
    }

    VungleJobRunner(JobCreator jobCreator, Executor executor2, ThreadPriorityHelper threadPriorityHelper2, NetworkProvider networkProvider2) {
        this.creator = jobCreator;
        this.executor = executor2;
        this.threadPriorityHelper = threadPriorityHelper2;
        this.pendingJobs = new CopyOnWriteArrayList();
        this.networkProvider = networkProvider2;
        this.pendingRunnable = new PendingRunnable(new WeakReference(this));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void executePendingJobs() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = Long.MAX_VALUE;
        long j2 = 0;
        for (PendingJob pendingJob : this.pendingJobs) {
            if (uptimeMillis >= pendingJob.uptimeMillis) {
                boolean z = true;
                if (pendingJob.info.getRequiredNetworkType() == 1 && this.networkProvider.getCurrentNetworkType() == -1) {
                    z = false;
                    j2++;
                }
                if (z) {
                    this.pendingJobs.remove(pendingJob);
                    this.executor.execute(new JobRunnable(pendingJob.info, this.creator, this, this.threadPriorityHelper));
                }
            } else {
                j = Math.min(j, pendingJob.uptimeMillis);
            }
        }
        if (!(j == Long.MAX_VALUE || j == this.nextCheck)) {
            handler.removeCallbacks(this.pendingRunnable);
            handler.postAtTime(this.pendingRunnable, TAG, j);
        }
        this.nextCheck = j;
        if (j2 > 0) {
            this.networkProvider.addListener(this.networkListener);
        } else {
            this.networkProvider.removeListener(this.networkListener);
        }
    }

    @Override // com.vungle.warren.tasks.JobRunner
    public synchronized void execute(JobInfo jobInfo) {
        JobInfo copy = jobInfo.copy();
        String jobTag = copy.getJobTag();
        long delay = copy.getDelay();
        copy.setDelay(0);
        if (copy.getUpdateCurrent()) {
            for (PendingJob pendingJob : this.pendingJobs) {
                if (pendingJob.info.getJobTag().equals(jobTag)) {
                    this.pendingJobs.remove(pendingJob);
                }
            }
        }
        this.pendingJobs.add(new PendingJob(SystemClock.uptimeMillis() + delay, copy));
        executePendingJobs();
    }
}
