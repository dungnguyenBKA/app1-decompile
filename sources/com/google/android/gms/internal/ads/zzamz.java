package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzamz {
    private static zzamz zzdlp;
    private AtomicBoolean zzdlq = new AtomicBoolean(false);

    zzamz() {
    }

    public static zzamz zzut() {
        if (zzdlp == null) {
            zzdlp = new zzamz();
        }
        return zzdlp;
    }

    public final Thread zzc(Context context, String str) {
        if (!this.zzdlq.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new zzamy(this, context, str));
        thread.start();
        return thread;
    }
}
