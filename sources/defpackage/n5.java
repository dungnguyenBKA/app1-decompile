package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.h;
import com.vungle.warren.model.ReportDBAdapter;

/* renamed from: n5  reason: default package */
public class n5 extends o5<Boolean> {
    private static final String i = h.f("BatteryNotLowTracker");

    public n5(Context context, m6 m6Var) {
        super(context, m6Var);
    }

    @Override // defpackage.p5
    public Object b() {
        Intent registerReceiver = this.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            h.c().b(i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        int intExtra = registerReceiver.getIntExtra("plugged", 0);
        int intExtra2 = registerReceiver.getIntExtra(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1);
        float intExtra3 = ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
        if (intExtra != 0 || intExtra2 == 1 || intExtra3 > 0.15f) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // defpackage.o5
    public IntentFilter g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // defpackage.o5
    public void h(Context context, Intent intent) {
        if (intent.getAction() != null) {
            h.c().a(i, String.format("Received %s", intent.getAction()), new Throwable[0]);
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.intent.action.BATTERY_OKAY")) {
                d(Boolean.TRUE);
            } else if (action.equals("android.intent.action.BATTERY_LOW")) {
                d(Boolean.FALSE);
            }
        }
    }
}
