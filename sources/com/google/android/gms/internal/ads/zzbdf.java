package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class zzbdf implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ long zzepq;
    private final /* synthetic */ long zzepr;
    private final /* synthetic */ long zzeps;
    private final /* synthetic */ long zzept;
    private final /* synthetic */ long zzepu;
    private final /* synthetic */ boolean zzepv;
    private final /* synthetic */ int zzepw;
    private final /* synthetic */ int zzepx;
    private final /* synthetic */ zzbdd zzepy;

    zzbdf(zzbdd zzbdd, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.zzepy = zzbdd;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepq = j;
        this.zzepr = j2;
        this.zzeps = j3;
        this.zzept = j4;
        this.zzepu = j5;
        this.zzepv = z;
        this.zzepw = i;
        this.zzepx = i2;
    }

    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("bufferedDuration", Long.toString(this.zzepq));
        hashMap.put("totalDuration", Long.toString(this.zzepr));
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.zzeps));
            hashMap.put("qoeCachedBytes", Long.toString(this.zzept));
            hashMap.put("totalBytes", Long.toString(this.zzepu));
            hashMap.put("reportTime", Long.toString(zzr.zzky().a()));
        }
        hashMap.put("cacheReady", this.zzepv ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.zzepw));
        hashMap.put("playerPreparedCount", Integer.toString(this.zzepx));
        this.zzepy.zza((zzbdd) "onPrecacheEvent", (String) hashMap);
    }
}
