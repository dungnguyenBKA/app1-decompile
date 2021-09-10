package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class zzbdj implements Runnable {
    private final /* synthetic */ String val$message;
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ zzbdd zzepy;
    private final /* synthetic */ String zzeqb;

    zzbdj(zzbdd zzbdd, String str, String str2, String str3, String str4) {
        this.zzepy = zzbdd;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzeqb = str3;
        this.val$message = str4;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.zzegh);
        if (!TextUtils.isEmpty(this.zzepp)) {
            hashMap.put("cachedSrc", this.zzepp);
        }
        zzbdd zzbdd = this.zzepy;
        hashMap.put("type", zzbdd.zzfi(this.zzeqb));
        hashMap.put("reason", this.zzeqb);
        if (!TextUtils.isEmpty(this.val$message)) {
            hashMap.put("message", this.val$message);
        }
        this.zzepy.zza((zzbdd) "onPrecacheEvent", (String) hashMap);
    }
}
