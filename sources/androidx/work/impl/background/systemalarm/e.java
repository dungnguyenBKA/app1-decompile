package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.h;
import androidx.work.impl.i;
import androidx.work.impl.utils.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e implements androidx.work.impl.a {
    static final String l = h.f("SystemAlarmDispatcher");
    final Context b;
    private final m6 c;
    private final g d = new g();
    private final androidx.work.impl.c e;
    private final i f;
    final b g;
    private final Handler h;
    final List<Intent> i;
    Intent j;
    private c k;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        a() {
        }

        public void run() {
            d dVar;
            e eVar;
            synchronized (e.this.i) {
                e eVar2 = e.this;
                eVar2.j = eVar2.i.get(0);
            }
            Intent intent = e.this.j;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = e.this.j.getIntExtra("KEY_START_ID", 0);
                h c = h.c();
                String str = e.l;
                c.a(str, String.format("Processing command %s, %s", e.this.j, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock b2 = j.b(e.this.b, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    h.c().a(str, String.format("Acquiring operation wake lock (%s) %s", action, b2), new Throwable[0]);
                    b2.acquire();
                    e eVar3 = e.this;
                    eVar3.g.f(eVar3.j, intExtra, eVar3);
                    h.c().a(str, String.format("Releasing operation wake lock (%s) %s", action, b2), new Throwable[0]);
                    b2.release();
                    eVar = e.this;
                    dVar = new d(eVar);
                } catch (Throwable th) {
                    h.c().a(e.l, String.format("Releasing operation wake lock (%s) %s", action, b2), new Throwable[0]);
                    b2.release();
                    e eVar4 = e.this;
                    eVar4.j(new d(eVar4));
                    throw th;
                }
                eVar.j(dVar);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static class b implements Runnable {
        private final e b;
        private final Intent c;
        private final int d;

        b(e eVar, Intent intent, int i) {
            this.b = eVar;
            this.c = intent;
            this.d = i;
        }

        public void run() {
            this.b.a(this.c, this.d);
        }
    }

    /* access modifiers changed from: package-private */
    public interface c {
    }

    static class d implements Runnable {
        private final e b;

        d(e eVar) {
            this.b = eVar;
        }

        public void run() {
            this.b.d();
        }
    }

    e(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.g = new b(applicationContext);
        i e2 = i.e(context);
        this.f = e2;
        androidx.work.impl.c g2 = e2.g();
        this.e = g2;
        this.c = e2.j();
        g2.a(this);
        this.i = new ArrayList();
        this.j = null;
        this.h = new Handler(Looper.getMainLooper());
    }

    private void b() {
        if (this.h.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    private void k() {
        b();
        PowerManager.WakeLock b2 = j.b(this.b, "ProcessCommand");
        try {
            b2.acquire();
            ((n6) this.f.j()).a(new a());
        } finally {
            b2.release();
        }
    }

    public boolean a(Intent intent, int i2) {
        boolean z;
        h c2 = h.c();
        String str = l;
        boolean z2 = false;
        c2.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i2)), new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            h.c().h(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            b();
            synchronized (this.i) {
                Iterator<Intent> it = this.i.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if ("ACTION_CONSTRAINTS_CHANGED".equals(it.next().getAction())) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
            }
            if (z) {
                return false;
            }
        }
        intent.putExtra("KEY_START_ID", i2);
        synchronized (this.i) {
            if (!this.i.isEmpty()) {
                z2 = true;
            }
            this.i.add(intent);
            if (!z2) {
                k();
            }
        }
        return true;
    }

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        Context context = this.b;
        int i2 = b.f;
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        this.h.post(new b(this, intent, 0));
    }

    /* access modifiers changed from: package-private */
    public void d() {
        h c2 = h.c();
        String str = l;
        c2.a(str, "Checking if commands are complete.", new Throwable[0]);
        b();
        synchronized (this.i) {
            if (this.j != null) {
                h.c().a(str, String.format("Removing command %s", this.j), new Throwable[0]);
                if (this.i.remove(0).equals(this.j)) {
                    this.j = null;
                } else {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
            }
            if (!this.g.e() && this.i.isEmpty()) {
                h.c().a(str, "No more commands & intents.", new Throwable[0]);
                c cVar = this.k;
                if (cVar != null) {
                    ((SystemAlarmService) cVar).a();
                }
            } else if (!this.i.isEmpty()) {
                k();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public androidx.work.impl.c e() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public m6 f() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public i g() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public g h() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public void i() {
        h.c().a(l, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.e.e(this);
        this.d.a();
        this.k = null;
    }

    /* access modifiers changed from: package-private */
    public void j(Runnable runnable) {
        this.h.post(runnable);
    }

    /* access modifiers changed from: package-private */
    public void l(c cVar) {
        if (this.k != null) {
            h.c().b(l, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.k = cVar;
        }
    }
}
