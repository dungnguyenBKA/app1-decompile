package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

public abstract class KO implements Runnable {
    public static final AtomicReference<Throwable> A00 = new AtomicReference<>();

    public abstract void A01();

    @Nullable
    public static Throwable A00() {
        return A00.get();
    }

    @SuppressLint({"CatchGeneralException"})
    public final void run() {
        try {
            A01();
        } catch (Throwable th) {
            A00.set(th);
            throw th;
        }
    }
}
