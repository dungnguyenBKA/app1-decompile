package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.h;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.e;
import androidx.work.impl.i;
import androidx.work.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ForceStopRunnable implements Runnable {
    private static final String d = h.f("ForceStopRunnable");
    private static final long e = TimeUnit.DAYS.toMillis(3650);
    private final Context b;
    private final i c;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        private static final String a = h.f("ForceStopRunnable$Rcvr");

        public void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                h.c().g(a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
                ForceStopRunnable.b(context);
            }
        }
    }

    public ForceStopRunnable(Context context, i iVar) {
        this.b = context.getApplicationContext();
        this.c = iVar;
    }

    private static PendingIntent a(Context context, int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i);
    }

    static void b(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent a = a(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + e;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, a);
        }
    }

    /* JADX INFO: finally extract failed */
    public void run() {
        h.c().a(d, "Performing cleanup operations.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            b.c(this.b);
        }
        WorkDatabase i = this.c.i();
        d6 t = i.t();
        i.c();
        try {
            e6 e6Var = (e6) t;
            List<c6> e2 = e6Var.e();
            boolean z = true;
            boolean z2 = !((ArrayList) e2).isEmpty();
            if (z2) {
                Iterator it = ((ArrayList) e2).iterator();
                while (it.hasNext()) {
                    c6 c6Var = (c6) it.next();
                    e6Var.s(m.ENQUEUED, c6Var.a);
                    e6Var.n(c6Var.a, -1);
                }
            }
            i.o();
            i.g();
            if (this.c.f().b()) {
                h.c().a(d, "Rescheduling Workers.", new Throwable[0]);
                this.c.m();
                this.c.f().c(false);
            } else {
                if (a(this.b, 536870912) == null) {
                    b(this.b);
                } else {
                    z = false;
                }
                if (z) {
                    h.c().a(d, "Application was force-stopped, rescheduling.", new Throwable[0]);
                    this.c.m();
                } else if (z2) {
                    h.c().a(d, "Found unfinished work, scheduling it.", new Throwable[0]);
                    e.b(this.c.d(), this.c.i(), this.c.h());
                }
            }
            this.c.l();
        } catch (Throwable th) {
            i.g();
            throw th;
        }
    }
}
