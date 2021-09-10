package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;
import org.apache.http.protocol.HTTP;

public class e implements s {
    private final Context a;
    private final eu b;
    private final g c;

    public e(Context context, eu euVar, g gVar) {
        this.a = context;
        this.b = euVar;
        this.c = gVar;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void a(it itVar, int i) {
        b(itVar, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void b(it itVar, int i, boolean z) {
        boolean z2;
        ComponentName componentName = new ComponentName(this.a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.a.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(this.a.getPackageName().getBytes(Charset.forName(HTTP.UTF_8)));
        adler32.update(itVar.b().getBytes(Charset.forName(HTTP.UTF_8)));
        adler32.update(ByteBuffer.allocate(4).putInt(rv.a(itVar.d())).array());
        if (itVar.c() != null) {
            adler32.update(itVar.c());
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        z2 = true;
                    }
                }
            }
            z2 = false;
            if (z2) {
                st.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", itVar);
                return;
            }
        }
        long X = this.b.X(itVar);
        g gVar = this.c;
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        yr d = itVar.d();
        builder.setMinimumLatency(gVar.b(d, X, i));
        Set<g.c> c2 = gVar.c().get(d).c();
        if (c2.contains(g.c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (c2.contains(g.c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (c2.contains(g.c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", itVar.b());
        persistableBundle.putInt("priority", rv.a(itVar.d()));
        if (itVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(itVar.c(), 0));
        }
        builder.setExtras(persistableBundle);
        st.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", itVar, Integer.valueOf(value), Long.valueOf(this.c.b(itVar.d(), X, i)), Long.valueOf(X), Integer.valueOf(i));
        jobScheduler.schedule(builder.build());
    }
}
