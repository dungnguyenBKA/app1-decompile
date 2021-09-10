package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.h;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemalarm.f;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.background.systemjob.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e {
    private static final String a = h.f("Schedulers");

    static d a(Context context, i iVar) {
        d dVar;
        if (Build.VERSION.SDK_INT >= 23) {
            b bVar = new b(context, iVar);
            androidx.work.impl.utils.e.a(context, SystemJobService.class, true);
            h.c().a(a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            return bVar;
        }
        try {
            dVar = (d) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            h.c().a(a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
        } catch (Throwable th) {
            h.c().a(a, "Unable to create GCM Scheduler", th);
            dVar = null;
        }
        if (dVar != null) {
            return dVar;
        }
        f fVar = new f(context);
        androidx.work.impl.utils.e.a(context, SystemAlarmService.class, true);
        h.c().a(a, "Created SystemAlarmScheduler", new Throwable[0]);
        return fVar;
    }

    /* JADX INFO: finally extract failed */
    public static void b(androidx.work.b bVar, WorkDatabase workDatabase, List<d> list) {
        if (list != null && list.size() != 0) {
            d6 t = workDatabase.t();
            workDatabase.c();
            try {
                e6 e6Var = (e6) t;
                List<c6> c = e6Var.c(bVar.d());
                if (((ArrayList) c).size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    Iterator it = ((ArrayList) c).iterator();
                    while (it.hasNext()) {
                        e6Var.n(((c6) it.next()).a, currentTimeMillis);
                    }
                }
                workDatabase.o();
                workDatabase.g();
                ArrayList arrayList = (ArrayList) c;
                if (arrayList.size() > 0) {
                    c6[] c6VarArr = (c6[]) arrayList.toArray(new c6[0]);
                    for (d dVar : list) {
                        dVar.a(c6VarArr);
                    }
                }
            } catch (Throwable th) {
                workDatabase.g();
                throw th;
            }
        }
    }
}
