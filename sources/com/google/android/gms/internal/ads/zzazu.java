package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;

final class zzazu implements Executor {
    private final Handler zzeik = new zzg(Looper.getMainLooper());

    zzazu() {
    }

    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzr.zzkr();
                zzj.zza(zzr.zzkv().getApplicationContext(), th);
                throw th;
            }
        } else {
            this.zzeik.post(runnable);
        }
    }
}
