package com.google.android.gms.internal.ads;

import java.util.HashMap;

final class zzbdg implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ boolean zzepv = false;
    private final /* synthetic */ zzbdd zzepy;
    private final /* synthetic */ int zzepz;
    private final /* synthetic */ int zzeqa;

    zzbdg(zzbdd zzbdd, String str, String str2, int i, int i2, boolean z) {
        this.zzepy = zzbdd;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepz = i;
        this.zzeqa = i2;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("bytesLoaded", Integer.toString(this.zzepz));
        hashMap.put("totalBytes", Integer.toString(this.zzeqa));
        hashMap.put("cacheReady", "0");
        this.zzepy.zza((zzbdd) "onPrecacheEvent", (String) hashMap);
    }
}
