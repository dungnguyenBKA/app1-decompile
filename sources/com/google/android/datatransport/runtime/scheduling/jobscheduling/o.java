package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* access modifiers changed from: package-private */
public final /* synthetic */ class o implements Runnable {
    private final q b;

    private o(q qVar) {
        this.b = qVar;
    }

    public static Runnable a(q qVar) {
        return new o(qVar);
    }

    public void run() {
        q qVar;
        qVar.d.j(p.a(this.b));
    }
}
