package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public final class zzazr implements ThreadFactory {
    private final /* synthetic */ String zzeii;
    private final AtomicInteger zzyx = new AtomicInteger(1);

    zzazr(String str) {
        this.zzeii = str;
    }

    public final Thread newThread(Runnable runnable) {
        String str = this.zzeii;
        int andIncrement = this.zzyx.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
