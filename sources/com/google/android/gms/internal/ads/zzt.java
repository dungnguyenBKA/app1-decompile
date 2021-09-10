package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public final class zzt implements Executor {
    private final /* synthetic */ Handler val$handler;

    zzt(zzq zzq, Handler handler) {
        this.val$handler = handler;
    }

    public final void execute(Runnable runnable) {
        this.val$handler.post(runnable);
    }
}
