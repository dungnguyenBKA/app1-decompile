package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.h;
import androidx.work.impl.i;
import java.util.Collections;
import java.util.List;

public class ConstraintTrackingWorker extends ListenableWorker implements c5 {
    private static final String k = h.f("ConstraintTrkngWrkr");
    private WorkerParameters f;
    final Object g = new Object();
    volatile boolean h = false;
    l6<ListenableWorker.a> i = l6.j();
    private ListenableWorker j;

    class a implements Runnable {
        a() {
        }

        public void run() {
            ConstraintTrackingWorker.this.e();
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        final /* synthetic */ uy b;

        b(uy uyVar) {
            this.b = uyVar;
        }

        public void run() {
            synchronized (ConstraintTrackingWorker.this.g) {
                if (ConstraintTrackingWorker.this.h) {
                    ConstraintTrackingWorker.this.c();
                } else {
                    ConstraintTrackingWorker.this.i.l(this.b);
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f = workerParameters;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.i.i(new ListenableWorker.a.C0022a());
    }

    @Override // defpackage.c5
    public void b(List<String> list) {
        h.c().a(k, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.g) {
            this.h = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.i.i(new ListenableWorker.a.b());
    }

    @Override // defpackage.c5
    public void d(List<String> list) {
    }

    /* access modifiers changed from: package-private */
    public void e() {
        String b2 = getInputData().b("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(b2)) {
            h.c().b(k, "No worker to delegate to.", new Throwable[0]);
            a();
            return;
        }
        ListenableWorker a2 = getWorkerFactory().a(getApplicationContext(), b2, this.f);
        this.j = a2;
        if (a2 == null) {
            h.c().a(k, "No worker to delegate to.", new Throwable[0]);
            a();
            return;
        }
        c6 j2 = ((e6) i.e(getApplicationContext()).i().t()).j(getId().toString());
        if (j2 == null) {
            a();
            return;
        }
        d5 d5Var = new d5(getApplicationContext(), getTaskExecutor(), this);
        d5Var.d(Collections.singletonList(j2));
        if (d5Var.a(getId().toString())) {
            h.c().a(k, String.format("Constraints met for delegate %s", b2), new Throwable[0]);
            try {
                uy<ListenableWorker.a> startWork = this.j.startWork();
                ((j6) startWork).addListener(new b(startWork), getBackgroundExecutor());
            } catch (Throwable th) {
                h c = h.c();
                String str = k;
                c.a(str, String.format("Delegated worker %s threw exception in startWork.", b2), th);
                synchronized (this.g) {
                    if (this.h) {
                        h.c().a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                        c();
                    } else {
                        a();
                    }
                }
            }
        } else {
            h.c().a(k, String.format("Constraints not met for delegate %s. Requesting retry.", b2), new Throwable[0]);
            c();
        }
    }

    @Override // androidx.work.ListenableWorker
    public m6 getTaskExecutor() {
        return i.e(getApplicationContext()).j();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.j;
        if (listenableWorker != null) {
            listenableWorker.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    public uy<ListenableWorker.a> startWork() {
        getBackgroundExecutor().execute(new a());
        return this.i;
    }
}
