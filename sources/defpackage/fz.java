package defpackage;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpStatus;

/* renamed from: fz  reason: default package */
public class fz implements ez, dz {
    private final hz a;
    private final Object b = new Object();
    private CountDownLatch c;

    public fz(hz hzVar, int i, TimeUnit timeUnit) {
        this.a = hzVar;
    }

    @Override // defpackage.dz
    public void a(String str, Bundle bundle) {
        synchronized (this.b) {
            az f = az.f();
            f.h("Logging event " + str + " to Firebase Analytics with params " + bundle);
            this.c = new CountDownLatch(1);
            this.a.a(str, bundle);
            az.f().h("Awaiting app exception callback from Analytics...");
            try {
                if (this.c.await((long) HttpStatus.SC_INTERNAL_SERVER_ERROR, TimeUnit.MILLISECONDS)) {
                    az.f().h("App exception callback received from Analytics listener.");
                } else {
                    az.f().i("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                }
            } catch (InterruptedException unused) {
                az.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
            }
            this.c = null;
        }
    }

    @Override // defpackage.ez
    public void onEvent(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.c;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
