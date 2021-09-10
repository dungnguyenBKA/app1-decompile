package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* access modifiers changed from: package-private */
/* renamed from: ke  reason: default package */
public class ke {
    private boolean a;
    private final Handler b = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: ke$a */
    private static final class a implements Handler.Callback {
        a() {
        }

        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((he) message.obj).a();
            return true;
        }
    }

    ke() {
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(he<?> heVar, boolean z) {
        if (!this.a) {
            if (!z) {
                this.a = true;
                heVar.a();
                this.a = false;
            }
        }
        this.b.obtainMessage(1, heVar).sendToTarget();
    }
}
