package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.LifecycleService;
import androidx.work.h;
import androidx.work.impl.background.systemalarm.e;
import androidx.work.impl.utils.j;

public class SystemAlarmService extends LifecycleService implements e.c {
    private static final String e = h.f("SystemAlarmService");
    private e c;
    private boolean d;

    public void a() {
        this.d = true;
        h.c().a(e, "All commands completed in dispatcher", new Throwable[0]);
        j.a();
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService
    public void onCreate() {
        super.onCreate();
        e eVar = new e(this);
        this.c = eVar;
        eVar.l(this);
        this.d = false;
    }

    @Override // androidx.lifecycle.LifecycleService
    public void onDestroy() {
        super.onDestroy();
        this.d = true;
        this.c.i();
    }

    @Override // androidx.lifecycle.LifecycleService
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.d) {
            h.c().d(e, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.c.i();
            e eVar = new e(this);
            this.c = eVar;
            eVar.l(this);
            this.d = false;
        }
        if (intent == null) {
            return 3;
        }
        this.c.a(intent, i2);
        return 3;
    }
}
