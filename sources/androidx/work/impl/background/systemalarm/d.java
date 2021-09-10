package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.h;
import androidx.work.impl.a;
import androidx.work.impl.background.systemalarm.e;
import androidx.work.impl.background.systemalarm.g;
import androidx.work.impl.utils.j;
import java.util.Collections;
import java.util.List;

public class d implements c5, a, g.b {
    private static final String k = h.f("DelayMetCommandHandler");
    private final Context b;
    private final int c;
    private final String d;
    private final e e;
    private final d5 f;
    private final Object g = new Object();
    private int h = 0;
    private PowerManager.WakeLock i;
    private boolean j = false;

    d(Context context, int i2, String str, e eVar) {
        this.b = context;
        this.c = i2;
        this.e = eVar;
        this.d = str;
        this.f = new d5(context, eVar.f(), this);
    }

    private void e() {
        synchronized (this.g) {
            this.f.e();
            this.e.h().c(this.d);
            PowerManager.WakeLock wakeLock = this.i;
            if (wakeLock != null && wakeLock.isHeld()) {
                h.c().a(k, String.format("Releasing wakelock %s for WorkSpec %s", this.i, this.d), new Throwable[0]);
                this.i.release();
            }
        }
    }

    private void g() {
        synchronized (this.g) {
            if (this.h < 2) {
                this.h = 2;
                h c2 = h.c();
                String str = k;
                c2.a(str, String.format("Stopping work for WorkSpec %s", this.d), new Throwable[0]);
                Context context = this.b;
                String str2 = this.d;
                Intent intent = new Intent(context, SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str2);
                e eVar = this.e;
                eVar.j(new e.b(eVar, intent, this.c));
                if (this.e.e().d(this.d)) {
                    h.c().a(str, String.format("WorkSpec %s needs to be rescheduled", this.d), new Throwable[0]);
                    Intent d2 = b.d(this.b, this.d);
                    e eVar2 = this.e;
                    eVar2.j(new e.b(eVar2, d2, this.c));
                } else {
                    h.c().a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.d), new Throwable[0]);
                }
            } else {
                h.c().a(k, String.format("Already stopped work for %s", this.d), new Throwable[0]);
            }
        }
    }

    @Override // androidx.work.impl.background.systemalarm.g.b
    public void a(String str) {
        h.c().a(k, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        g();
    }

    @Override // defpackage.c5
    public void b(List<String> list) {
        g();
    }

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        h.c().a(k, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        e();
        if (z) {
            Intent d2 = b.d(this.b, this.d);
            e eVar = this.e;
            eVar.j(new e.b(eVar, d2, this.c));
        }
        if (this.j) {
            Intent a = b.a(this.b);
            e eVar2 = this.e;
            eVar2.j(new e.b(eVar2, a, this.c));
        }
    }

    @Override // defpackage.c5
    public void d(List<String> list) {
        if (list.contains(this.d)) {
            synchronized (this.g) {
                if (this.h == 0) {
                    this.h = 1;
                    h.c().a(k, String.format("onAllConstraintsMet for %s", this.d), new Throwable[0]);
                    if (this.e.e().f(this.d, null)) {
                        this.e.h().b(this.d, 600000, this);
                    } else {
                        e();
                    }
                } else {
                    h.c().a(k, String.format("Already started work for %s", this.d), new Throwable[0]);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void f() {
        this.i = j.b(this.b, String.format("%s (%s)", this.d, Integer.valueOf(this.c)));
        h c2 = h.c();
        String str = k;
        c2.a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.i, this.d), new Throwable[0]);
        this.i.acquire();
        c6 j2 = ((e6) this.e.g().i().t()).j(this.d);
        if (j2 == null) {
            g();
            return;
        }
        boolean b2 = j2.b();
        this.j = b2;
        if (!b2) {
            h.c().a(str, String.format("No constraints for %s", this.d), new Throwable[0]);
            d(Collections.singletonList(this.d));
            return;
        }
        this.f.d(Collections.singletonList(j2));
    }
}
