package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.h;
import androidx.work.impl.a;
import androidx.work.impl.i;
import java.util.HashMap;
import java.util.Map;

public class SystemJobService extends JobService implements a {
    private static final String d = h.f("SystemJobService");
    private i b;
    private final Map<String, JobParameters> c = new HashMap();

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        JobParameters remove;
        h.c().a(d, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.c) {
            remove = this.c.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    public void onCreate() {
        super.onCreate();
        try {
            i e = i.e(getApplicationContext());
            this.b = e;
            e.g().a(this);
        } catch (IllegalStateException unused) {
            if (Application.class.equals(getApplication().getClass())) {
                h.c().h(d, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    public void onDestroy() {
        super.onDestroy();
        i iVar = this.b;
        if (iVar != null) {
            iVar.g().e(this);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0082, code lost:
        r2 = null;
        r3 = android.os.Build.VERSION.SDK_INT;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0087, code lost:
        if (r3 < 24) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0089, code lost:
        r2 = new androidx.work.WorkerParameters.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0092, code lost:
        if (r9.getTriggeredContentUris() == null) goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0094, code lost:
        r2.b = java.util.Arrays.asList(r9.getTriggeredContentUris());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a2, code lost:
        if (r9.getTriggeredContentAuthorities() == null) goto L_0x00ae;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a4, code lost:
        r2.a = java.util.Arrays.asList(r9.getTriggeredContentAuthorities());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00b0, code lost:
        if (r3 < 28) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00b2, code lost:
        r2.c = r9.getNetwork();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00b8, code lost:
        r8.b.p(r0, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00bd, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onStartJob(android.app.job.JobParameters r9) {
        /*
        // Method dump skipped, instructions count: 193
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStartJob(android.app.job.JobParameters):boolean");
    }

    public boolean onStopJob(JobParameters jobParameters) {
        if (this.b == null) {
            h.c().a(d, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        PersistableBundle extras = jobParameters.getExtras();
        if (extras == null) {
            h.c().b(d, "No extras in JobParameters.", new Throwable[0]);
            return false;
        }
        String string = extras.getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            h.c().b(d, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        h.c().a(d, String.format("onStopJob for %s", string), new Throwable[0]);
        synchronized (this.c) {
            this.c.remove(string);
        }
        this.b.q(string);
        return !this.b.g().b(string);
    }
}
