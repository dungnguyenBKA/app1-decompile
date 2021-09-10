package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.work.h;
import androidx.work.impl.i;
import androidx.work.impl.utils.d;

/* access modifiers changed from: package-private */
public class a {
    private static final String a = h.f("Alarms");

    public static void a(Context context, i iVar, String str) {
        y5 y5Var = (y5) iVar.i().r();
        w5 a2 = y5Var.a(str);
        if (a2 != null) {
            b(context, str, a2.b);
            h.c().a(a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            y5Var.c(str);
        }
    }

    private static void b(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 536870912);
        if (service != null && alarmManager != null) {
            h.c().a(a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
            alarmManager.cancel(service);
        }
    }

    public static void c(Context context, i iVar, String str, long j) {
        y5 y5Var = (y5) iVar.i().r();
        w5 a2 = y5Var.a(str);
        if (a2 != null) {
            b(context, str, a2.b);
            d(context, str, a2.b, j);
            return;
        }
        int b = new d(context).b();
        y5Var.b(new w5(str, b));
        d(context, str, b, j);
    }

    private static void d(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 1073741824);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
