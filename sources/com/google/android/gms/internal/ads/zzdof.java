package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;

public final class zzdof<T> {
    private final zzdzv zzghl;
    @GuardedBy("this")
    private final Deque<zzdzw<T>> zzhlo = new LinkedBlockingDeque();
    private final Callable<T> zzhlp;

    public zzdof(Callable<T> callable, zzdzv zzdzv) {
        this.zzhlp = callable;
        this.zzghl = zzdzv;
    }

    public final synchronized void ensureSize(int i) {
        int size = i - this.zzhlo.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.zzhlo.add(this.zzghl.zze(this.zzhlp));
        }
    }

    public final synchronized zzdzw<T> zzavm() {
        ensureSize(1);
        return this.zzhlo.poll();
    }

    public final synchronized void zzd(zzdzw<T> zzdzw) {
        this.zzhlo.addFirst(zzdzw);
    }
}
