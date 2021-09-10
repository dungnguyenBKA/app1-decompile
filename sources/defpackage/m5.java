package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.work.h;
import com.vungle.warren.model.ReportDBAdapter;

/* renamed from: m5  reason: default package */
public class m5 extends o5<Boolean> {
    private static final String i = h.f("BatteryChrgTracker");

    public m5(Context context, m6 m6Var) {
        super(context, m6Var);
    }

    @Override // defpackage.p5
    public Object b() {
        int intExtra;
        Intent registerReceiver = this.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            h.c().b(i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        if (Build.VERSION.SDK_INT < 23 ? registerReceiver.getIntExtra("plugged", 0) != 0 : (intExtra = registerReceiver.getIntExtra(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1)) == 2 || intExtra == 5) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // defpackage.o5
    public IntentFilter g() {
        IntentFilter intentFilter = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.CHARGING");
            intentFilter.addAction("android.os.action.DISCHARGING");
        } else {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        return intentFilter;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004f, code lost:
        if (r6.equals("android.intent.action.ACTION_POWER_DISCONNECTED") == false) goto L_0x0051;
     */
    @Override // defpackage.o5
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void h(android.content.Context r6, android.content.Intent r7) {
        /*
        // Method dump skipped, instructions count: 134
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m5.h(android.content.Context, android.content.Intent):void");
    }
}
