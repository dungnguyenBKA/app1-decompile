package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class zzbdk implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ long zzepr;
    private final /* synthetic */ zzbdd zzepy;

    zzbdk(zzbdd zzbdd, String str, String str2, long j) {
        this.zzepy = zzbdd;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepr = j;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("totalDuration", Long.toString(this.zzepr));
        this.zzepy.zza((zzbdd) "onPrecacheEvent", (String) hashMap);
    }
}
