package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* access modifiers changed from: package-private */
public final class f extends Handler {
    private final i a = new i();
    private final int b;
    private final c c;
    private boolean d;

    f(c cVar, Looper looper, int i) {
        super(looper);
        this.c = cVar;
        this.b = i;
    }

    /* access modifiers changed from: package-private */
    public void a(n nVar, Object obj) {
        h a2 = h.a(nVar, obj);
        synchronized (this) {
            this.a.a(a2);
            if (!this.d) {
                this.d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new e("Could not send handler message");
                }
            }
        }
    }

    public void handleMessage(Message message) {
        boolean z = false;
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                h b2 = this.a.b();
                if (b2 == null) {
                    synchronized (this) {
                        b2 = this.a.b();
                        if (b2 == null) {
                            this.d = z;
                            this.d = z;
                            return;
                        }
                    }
                }
                this.c.d(b2);
            } while (SystemClock.uptimeMillis() - uptimeMillis < ((long) this.b));
            if (sendMessage(obtainMessage())) {
                z = true;
                return;
            }
            throw new e("Could not send handler message");
        } finally {
            this.d = z;
        }
    }
}
