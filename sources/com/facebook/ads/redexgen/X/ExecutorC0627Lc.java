package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.Lc  reason: case insensitive filesystem */
public final class ExecutorC0627Lc implements Executor {
    public static final ExecutorC0627Lc A01 = new ExecutorC0627Lc();
    public final Handler A00 = new Handler(Looper.getMainLooper());

    public static void A00(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            A01.execute(runnable);
        }
    }

    @NonNull
    public final Handler A01() {
        return this.A00;
    }

    public final void execute(Runnable runnable) {
        this.A00.post(runnable);
    }
}
