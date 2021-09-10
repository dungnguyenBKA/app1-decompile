package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.h;
import androidx.work.impl.d;

public class f implements d {
    private static final String c = h.f("SystemAlarmScheduler");
    private final Context b;

    public f(Context context) {
        this.b = context.getApplicationContext();
    }

    @Override // androidx.work.impl.d
    public void a(c6... c6VarArr) {
        for (c6 c6Var : c6VarArr) {
            h.c().a(c, String.format("Scheduling work with workSpecId %s", c6Var.a), new Throwable[0]);
            this.b.startService(b.d(this.b, c6Var.a));
        }
    }

    @Override // androidx.work.impl.d
    public void cancel(String str) {
        Context context = this.b;
        int i = b.f;
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        this.b.startService(intent);
    }
}
