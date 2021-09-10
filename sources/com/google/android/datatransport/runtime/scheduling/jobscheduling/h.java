package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* access modifiers changed from: package-private */
public final /* synthetic */ class h implements Runnable {
    private final m b;
    private final it c;
    private final int d;
    private final Runnable e;

    private h(m mVar, it itVar, int i, Runnable runnable) {
        this.b = mVar;
        this.c = itVar;
        this.d = i;
        this.e = runnable;
    }

    public static Runnable a(m mVar, it itVar, int i, Runnable runnable) {
        return new h(mVar, itVar, i, runnable);
    }

    public void run() {
        m.d(this.b, this.c, this.d, this.e);
    }
}
