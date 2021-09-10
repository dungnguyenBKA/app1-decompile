package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.h;

abstract class ConstraintProxy extends BroadcastReceiver {
    private static final String a = h.f("ConstraintProxy");
    public static final /* synthetic */ int b = 0;

    public static class BatteryChargingProxy extends ConstraintProxy {
    }

    public static class BatteryNotLowProxy extends ConstraintProxy {
    }

    public static class NetworkStateProxy extends ConstraintProxy {
    }

    public static class StorageNotLowProxy extends ConstraintProxy {
    }

    ConstraintProxy() {
    }

    public void onReceive(Context context, Intent intent) {
        h.c().a(a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(b.a(context));
    }
}
