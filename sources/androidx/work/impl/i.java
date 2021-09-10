package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.room.g;
import androidx.work.WorkerParameters;
import androidx.work.b;
import androidx.work.h;
import androidx.work.impl.h;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.a;
import androidx.work.impl.utils.f;
import androidx.work.k;
import androidx.work.n;
import androidx.work.o;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import photoeditor.cutout.backgrounderaser.R;

public class i extends n {
    private static i j;
    private static i k;
    private static final Object l = new Object();
    private Context a;
    private b b;
    private WorkDatabase c;
    private m6 d;
    private List<d> e;
    private c f;
    private f g;
    private boolean h;
    private BroadcastReceiver.PendingResult i;

    public i(Context context, b bVar, m6 m6Var, boolean z) {
        g.a aVar;
        Context applicationContext = context.getApplicationContext();
        Executor f2 = bVar.f();
        int i2 = WorkDatabase.k;
        if (z) {
            aVar = androidx.room.f.b(applicationContext, WorkDatabase.class);
            aVar.c();
        } else {
            g.a a2 = androidx.room.f.a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            a2.f(f2);
            aVar = a2;
        }
        aVar.a(new g());
        aVar.b(h.a);
        aVar.b(new h.d(applicationContext, 2, 3));
        aVar.b(h.b);
        aVar.b(h.c);
        aVar.b(new h.d(applicationContext, 5, 6));
        aVar.e();
        WorkDatabase workDatabase = (WorkDatabase) aVar.d();
        androidx.work.h.e(new h.a(bVar.e()));
        List<d> asList = Arrays.asList(e.a(applicationContext, this), new z4(applicationContext, m6Var, this));
        c cVar = new c(context, bVar, m6Var, workDatabase, asList);
        Context applicationContext2 = context.getApplicationContext();
        this.a = applicationContext2;
        this.b = bVar;
        this.d = m6Var;
        this.c = workDatabase;
        this.e = asList;
        this.f = cVar;
        this.g = new f(applicationContext2);
        this.h = false;
        ((n6) m6Var).a(new ForceStopRunnable(applicationContext2, this));
    }

    public static i e(Context context) {
        i iVar;
        Object obj = l;
        synchronized (obj) {
            synchronized (obj) {
                iVar = j;
                if (iVar == null) {
                    iVar = k;
                }
            }
            return iVar;
        }
        if (iVar == null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof b.AbstractC0023b) {
                k(applicationContext, ((b.AbstractC0023b) applicationContext).a());
                iVar = e(applicationContext);
            } else {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
        }
        return iVar;
    }

    public static void k(Context context, b bVar) {
        synchronized (l) {
            i iVar = j;
            if (iVar != null) {
                if (k != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information.");
                }
            }
            if (iVar == null) {
                Context applicationContext = context.getApplicationContext();
                if (k == null) {
                    k = new i(applicationContext, bVar, new n6(bVar.f()), applicationContext.getResources().getBoolean(R.bool.k));
                }
                j = k;
            }
        }
    }

    public k a(String str) {
        a b2 = a.b(str, this);
        ((n6) this.d).a(b2);
        return b2.c();
    }

    public k b(List<? extends o> list) {
        if (!list.isEmpty()) {
            return new f(this, list).a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    public Context c() {
        return this.a;
    }

    public b d() {
        return this.b;
    }

    public f f() {
        return this.g;
    }

    public c g() {
        return this.f;
    }

    public List<d> h() {
        return this.e;
    }

    public WorkDatabase i() {
        return this.c;
    }

    public m6 j() {
        return this.d;
    }

    public void l() {
        synchronized (l) {
            this.h = true;
            BroadcastReceiver.PendingResult pendingResult = this.i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.i = null;
            }
        }
    }

    public void m() {
        if (Build.VERSION.SDK_INT >= 23) {
            androidx.work.impl.background.systemjob.b.b(this.a);
        }
        ((e6) this.c.t()).o();
        e.b(this.b, this.c, this.e);
    }

    public void n(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (l) {
            this.i = pendingResult;
            if (this.h) {
                pendingResult.finish();
                this.i = null;
            }
        }
    }

    public void o(String str) {
        ((n6) this.d).a(new androidx.work.impl.utils.h(this, str, null));
    }

    public void p(String str, WorkerParameters.a aVar) {
        ((n6) this.d).a(new androidx.work.impl.utils.h(this, str, aVar));
    }

    public void q(String str) {
        ((n6) this.d).a(new androidx.work.impl.utils.i(this, str));
    }
}
