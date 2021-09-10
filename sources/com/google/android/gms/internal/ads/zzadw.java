package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class zzadw {
    private static final AtomicReference<zzadx> zzdfd = new AtomicReference<>();
    static final AtomicBoolean zzdfe = new AtomicBoolean();

    public static void zza(zzadx zzadx) {
        zzdfd.set(zzadx);
    }

    static zzadx zztc() {
        return zzdfd.get();
    }
}
