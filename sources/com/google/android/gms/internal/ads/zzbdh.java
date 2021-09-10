package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class zzbdh implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ zzbdd zzepy;
    private final /* synthetic */ int zzeqa;

    zzbdh(zzbdd zzbdd, String str, String str2, int i) {
        this.zzepy = zzbdd;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzeqa = i;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("totalBytes", Integer.toString(this.zzeqa));
        this.zzepy.zza((zzbdd) "onPrecacheEvent", (String) hashMap);
    }
}
