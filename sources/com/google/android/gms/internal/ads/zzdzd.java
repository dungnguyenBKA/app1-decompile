package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public enum zzdzd implements Executor {
    INSTANCE;

    public final void execute(Runnable runnable) {
        runnable.run();
    }

    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
