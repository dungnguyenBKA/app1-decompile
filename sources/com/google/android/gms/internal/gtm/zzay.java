package com.google.android.gms.internal.gtm;

import com.google.android.gms.analytics.k;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzay extends k<zzay> {
    private final Map<Integer, Double> zza = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.zza.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(ic.l(new StringBuilder(valueOf.length() + 6), "metric", valueOf), entry.getValue());
        }
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzay zzay) {
        zzay.zza.putAll(this.zza);
    }

    public final Map<Integer, Double> zzd() {
        return Collections.unmodifiableMap(this.zza);
    }
}
