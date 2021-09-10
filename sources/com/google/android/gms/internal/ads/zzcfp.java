package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcfp implements zzqw {
    private final zzbeb zzeuk;

    zzcfp(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        zzbeb zzbeb = this.zzeuk;
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", zzqx.zzbrj ? "1" : "0");
        zzbeb.zza("onAdVisibilityChanged", hashMap);
    }
}
