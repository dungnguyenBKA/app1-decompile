package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.vungle.warren.model.ReportDBAdapter;

/* access modifiers changed from: package-private */
/* renamed from: pz  reason: default package */
public class pz {
    private final Float a;
    private final boolean b;

    private pz(Float f, boolean z) {
        this.b = z;
        this.a = f;
    }

    public static pz a(Context context) {
        Float f = null;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1);
            if (intExtra != -1 && (intExtra == 2 || intExtra == 5)) {
                z = true;
            }
            int intExtra2 = registerReceiver.getIntExtra("level", -1);
            int intExtra3 = registerReceiver.getIntExtra("scale", -1);
            if (!(intExtra2 == -1 || intExtra3 == -1)) {
                f = Float.valueOf(((float) intExtra2) / ((float) intExtra3));
            }
        }
        return new pz(f, z);
    }

    public Float b() {
        return this.a;
    }

    public int c() {
        Float f;
        if (!this.b || (f = this.a) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }
}
