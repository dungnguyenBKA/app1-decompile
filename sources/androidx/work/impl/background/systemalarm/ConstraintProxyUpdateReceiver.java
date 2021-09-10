package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.h;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.i;
import androidx.work.impl.utils.e;

public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {
    static final String a = h.f("ConstrntProxyUpdtRecvr");

    class a implements Runnable {
        final /* synthetic */ Intent b;
        final /* synthetic */ Context c;
        final /* synthetic */ BroadcastReceiver.PendingResult d;

        a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.b = intent;
            this.c = context;
            this.d = pendingResult;
        }

        public void run() {
            try {
                boolean booleanExtra = this.b.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.b.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.b.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.b.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                h.c().a(ConstraintProxyUpdateReceiver.a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                e.a(this.c, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                e.a(this.c, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                e.a(this.c, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                e.a(this.c, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.d.finish();
            }
        }
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            h.c().a(a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
            return;
        }
        ((n6) i.e(context).j()).a(new a(this, intent, context, goAsync()));
    }
}
