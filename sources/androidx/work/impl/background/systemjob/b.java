package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.h;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d;
import androidx.work.impl.i;
import androidx.work.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

public class b implements d {
    private static final String g = h.f("SystemJobScheduler");
    private final Context b;
    private final JobScheduler c;
    private final i d;
    private final androidx.work.impl.utils.d e;
    private final a f;

    public b(Context context, i iVar) {
        a aVar = new a(context);
        this.b = context;
        this.d = iVar;
        this.c = (JobScheduler) context.getSystemService("jobscheduler");
        this.e = new androidx.work.impl.utils.d(context);
        this.f = aVar;
    }

    public static void b(Context context) {
        List<JobInfo> f2;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (!(jobScheduler == null || (f2 = f(context, jobScheduler)) == null || f2.isEmpty())) {
            for (JobInfo jobInfo : f2) {
                d(jobScheduler, jobInfo.getId());
            }
        }
    }

    public static void c(Context context) {
        List<JobInfo> f2;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (!(jobScheduler == null || (f2 = f(context, jobScheduler)) == null || f2.isEmpty())) {
            for (JobInfo jobInfo : f2) {
                PersistableBundle extras = jobInfo.getExtras();
                if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                    d(jobScheduler, jobInfo.getId());
                }
            }
        }
    }

    private static void d(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            h.c().b(g, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    private static List<Integer> e(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> f2 = f(context, jobScheduler);
        if (f2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : f2) {
            PersistableBundle extras = jobInfo.getExtras();
            if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID") && str.equals(extras.getString("EXTRA_WORK_SPEC_ID"))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    private static List<JobInfo> f(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            h.c().b(g, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    /* JADX INFO: finally extract failed */
    @Override // androidx.work.impl.d
    public void a(c6... c6VarArr) {
        int i;
        List<Integer> e2;
        int i2;
        WorkDatabase i3 = this.d.i();
        for (c6 c6Var : c6VarArr) {
            i3.c();
            try {
                c6 j = ((e6) i3.t()).j(c6Var.a);
                if (j == null) {
                    h.c().h(g, "Skipping scheduling " + c6Var.a + " because it's no longer in the DB", new Throwable[0]);
                    i3.o();
                } else if (j.b != m.ENQUEUED) {
                    h.c().h(g, "Skipping scheduling " + c6Var.a + " because it is no longer enqueued", new Throwable[0]);
                    i3.o();
                } else {
                    w5 a = ((y5) i3.r()).a(c6Var.a);
                    if (a != null) {
                        i = a.b;
                    } else {
                        androidx.work.impl.utils.d dVar = this.e;
                        Objects.requireNonNull(this.d.d());
                        i = dVar.d(0, this.d.d().c());
                    }
                    if (a == null) {
                        ((y5) this.d.i().r()).b(new w5(c6Var.a, i));
                    }
                    g(c6Var, i);
                    if (Build.VERSION.SDK_INT == 23 && (e2 = e(this.b, this.c, c6Var.a)) != null) {
                        int indexOf = e2.indexOf(Integer.valueOf(i));
                        if (indexOf >= 0) {
                            e2.remove(indexOf);
                        }
                        if (!e2.isEmpty()) {
                            i2 = e2.get(0).intValue();
                        } else {
                            androidx.work.impl.utils.d dVar2 = this.e;
                            Objects.requireNonNull(this.d.d());
                            i2 = dVar2.d(0, this.d.d().c());
                        }
                        g(c6Var, i2);
                    }
                    i3.o();
                }
                i3.g();
            } catch (Throwable th) {
                i3.g();
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.d
    public void cancel(String str) {
        List<Integer> e2 = e(this.b, this.c, str);
        if (!(e2 == null || e2.isEmpty())) {
            for (Integer num : e2) {
                d(this.c, num.intValue());
            }
            ((y5) this.d.i().r()).c(str);
        }
    }

    public void g(c6 c6Var, int i) {
        JobInfo a = this.f.a(c6Var, i);
        h.c().a(g, String.format("Scheduling work ID %s Job ID %s", c6Var.a, Integer.valueOf(i)), new Throwable[0]);
        try {
            this.c.schedule(a);
        } catch (IllegalStateException e2) {
            List<JobInfo> f2 = f(this.b, this.c);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(f2 != null ? f2.size() : 0), Integer.valueOf(((ArrayList) ((e6) this.d.i().t()).f()).size()), Integer.valueOf(this.d.d().d()));
            h.c().b(g, format, new Throwable[0]);
            throw new IllegalStateException(format, e2);
        } catch (Throwable th) {
            h.c().b(g, String.format("Unable to schedule %s", c6Var), th);
        }
    }
}
