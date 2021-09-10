package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

public class zzbwf<ListenerT> {
    @GuardedBy("this")
    private final Map<ListenerT, Executor> zzgaf = new HashMap();

    protected zzbwf(Set<zzbya<ListenerT>> set) {
        zzb(set);
    }

    private final synchronized void zzb(Set<zzbya<ListenerT>> set) {
        for (zzbya<ListenerT> zzbya : set) {
            zza(zzbya);
        }
    }

    public final synchronized void zza(zzbya<ListenerT> zzbya) {
        zza(zzbya.zzgba, zzbya.executor);
    }

    public final synchronized void zza(ListenerT listenert, Executor executor) {
        this.zzgaf.put(listenert, executor);
    }

    /* access modifiers changed from: protected */
    public final synchronized void zza(zzbwh<ListenerT> zzbwh) {
        for (Map.Entry<ListenerT, Executor> entry : this.zzgaf.entrySet()) {
            entry.getValue().execute(new zzbwe(zzbwh, entry.getKey()));
        }
    }
}
