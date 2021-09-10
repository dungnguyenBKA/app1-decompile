package com.google.android.gms.internal.ads;

import java.util.Map;

final /* synthetic */ class zzbcj implements Runnable {
    private final Map zzehx;
    private final zzbbo zzeol;

    zzbcj(zzbbo zzbbo, Map map) {
        this.zzeol = zzbbo;
        this.zzehx = map;
    }

    public final void run() {
        this.zzeol.zza("onGcacheInfoEvent", this.zzehx);
    }
}
