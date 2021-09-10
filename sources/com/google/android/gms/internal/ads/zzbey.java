package com.google.android.gms.internal.ads;

import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbey implements Runnable {
    private final Map zzehx;
    private final zzbev zzeug;

    zzbey(zzbev zzbev, Map map) {
        this.zzeug = zzbev;
        this.zzehx = map;
    }

    public final void run() {
        this.zzeug.zzl(this.zzehx);
    }
}
