package org.greenrobot.eventbus;

import android.util.Log;
import com.facebook.ads.AdError;

/* access modifiers changed from: package-private */
public final class b implements Runnable {
    private final i b = new i();
    private final c c;
    private volatile boolean d;

    b(c cVar) {
        this.c = cVar;
    }

    public void a(n nVar, Object obj) {
        h a = h.a(nVar, obj);
        synchronized (this) {
            this.b.a(a);
            if (!this.d) {
                this.d = true;
                this.c.c().execute(this);
            }
        }
    }

    public void run() {
        while (true) {
            try {
                h c2 = this.b.c(AdError.NETWORK_ERROR_CODE);
                if (c2 == null) {
                    synchronized (this) {
                        c2 = this.b.b();
                        if (c2 == null) {
                            this.d = false;
                            return;
                        }
                    }
                }
                this.c.d(c2);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.d = false;
            }
        }
    }
}
