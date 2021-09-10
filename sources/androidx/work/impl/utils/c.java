package androidx.work.impl.utils;

import androidx.work.e;
import androidx.work.h;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.b;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.f;
import androidx.work.impl.i;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.k;

public class c implements Runnable {
    private static final String d = h.f("EnqueueRunnable");
    private final f b;
    private final b c = new b();

    public c(f fVar) {
        this.b = fVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:104:0x01e7  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x0223  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0230  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x0265 A[LOOP:8: B:133:0x025f->B:135:0x0265, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0280  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0292 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01a9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean b(androidx.work.impl.f r24) {
        /*
        // Method dump skipped, instructions count: 676
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.c.b(androidx.work.impl.f):boolean");
    }

    private static void c(c6 c6Var) {
        androidx.work.c cVar = c6Var.j;
        if (cVar.f() || cVar.i()) {
            String str = c6Var.c;
            e.a aVar = new e.a();
            aVar.b(c6Var.e);
            aVar.d("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c6Var.c = ConstraintTrackingWorker.class.getName();
            c6Var.e = aVar.a();
        }
    }

    public k a() {
        return this.c;
    }

    public void run() {
        try {
            if (!this.b.h()) {
                WorkDatabase i = this.b.g().i();
                i.c();
                try {
                    boolean b2 = b(this.b);
                    i.o();
                    if (b2) {
                        e.a(this.b.g().c(), RescheduleReceiver.class, true);
                        i g = this.b.g();
                        androidx.work.impl.e.b(g.d(), g.i(), g.h());
                    }
                    this.c.a(k.a);
                } finally {
                    i.g();
                }
            } else {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.b));
            }
        } catch (Throwable th) {
            this.c.a(new k.b.a(th));
        }
    }
}
