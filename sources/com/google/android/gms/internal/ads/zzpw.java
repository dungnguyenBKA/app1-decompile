package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* access modifiers changed from: package-private */
public final class zzpw implements ThreadFactory {
    private final /* synthetic */ String zzbks;

    zzpw(String str) {
        this.zzbks = str;
    }

    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zzbks);
    }
}
