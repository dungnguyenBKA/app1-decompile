package com.google.android.gms.internal.ads;

import java.lang.Thread;

/* access modifiers changed from: package-private */
public final class zzasu implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzdty;
    private final /* synthetic */ zzass zzdtz;

    zzasu(zzass zzass, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdtz = zzass;
        this.zzdty = uncaughtExceptionHandler;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzdtz.zza(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzdty;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zzdty;
            if (uncaughtExceptionHandler2 != null) {
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            }
            throw th2;
        }
    }
}
