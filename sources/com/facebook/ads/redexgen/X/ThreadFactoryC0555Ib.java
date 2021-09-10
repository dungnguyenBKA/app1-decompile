package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;

/* renamed from: com.facebook.ads.redexgen.X.Ib  reason: case insensitive filesystem */
public class ThreadFactoryC0555Ib implements ThreadFactory {
    public final /* synthetic */ String A00;

    public ThreadFactoryC0555Ib(String str) {
        this.A00 = str;
    }

    public final Thread newThread(@NonNull Runnable runnable) {
        return new Thread(runnable, this.A00);
    }
}
