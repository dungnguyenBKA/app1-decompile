package com.google.android.gms.analytics;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.FutureTask;

final class m extends FutureTask {
    final /* synthetic */ n b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    m(n nVar, Runnable runnable, Object obj) {
        super(runnable, obj);
        this.b = nVar;
    }

    /* access modifiers changed from: protected */
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.b.b.e;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        } else if (Log.isLoggable("GAv4", 6)) {
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + 37);
            sb.append("MeasurementExecutor: job failed with ");
            sb.append(valueOf);
            Log.e("GAv4", sb.toString());
        }
        super.setException(th);
    }
}
