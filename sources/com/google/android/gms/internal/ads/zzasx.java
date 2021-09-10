package com.google.android.gms.internal.ads;

import java.lang.Thread;

/* access modifiers changed from: package-private */
public final class zzasx implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzass zzdtz;
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzdub;

    zzasx(zzass zzass, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdtz = zzass;
        this.zzdub = uncaughtExceptionHandler;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzdtz.zza(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzdub;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zzdub;
            if (uncaughtExceptionHandler2 != null) {
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            }
            throw th2;
        }
    }
}
