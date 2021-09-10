package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzzs implements InitializationStatus {
    private final zzzn zzclc;

    zzzs(zzzn zzzn) {
        this.zzclc = zzzn;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        zzzn zzzn = this.zzclc;
        HashMap hashMap = new HashMap();
        hashMap.put("com.google.android.gms.ads.MobileAds", new zzzr(zzzn));
        return hashMap;
    }
}
