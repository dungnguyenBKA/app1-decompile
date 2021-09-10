package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.h;
import androidx.work.impl.i;

public class RescheduleReceiver extends BroadcastReceiver {
    private static final String a = h.f("RescheduleReceiver");

    public void onReceive(Context context, Intent intent) {
        h.c().a(a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                i.e(context).n(goAsync());
            } catch (IllegalStateException unused) {
                h.c().b(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
            }
        } else {
            int i = b.f;
            Intent intent2 = new Intent(context, SystemAlarmService.class);
            intent2.setAction("ACTION_RESCHEDULE");
            context.startService(intent2);
        }
    }
}
