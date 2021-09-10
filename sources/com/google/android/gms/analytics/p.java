package com.google.android.gms.analytics;

import android.os.Process;

/* access modifiers changed from: package-private */
public final class p extends Thread {
    p(Runnable runnable, String str) {
        super(runnable, str);
    }

    public final void run() {
        Process.setThreadPriority(10);
        super.run();
    }
}
