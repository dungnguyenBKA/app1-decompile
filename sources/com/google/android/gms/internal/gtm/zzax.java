package com.google.android.gms.internal.gtm;

import com.google.android.gms.analytics.k;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzax extends k<zzax> {
    private final Map<Integer, String> zza = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, String> entry : this.zza.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(ic.l(new StringBuilder(valueOf.length() + 9), "dimension", valueOf), entry.getValue());
        }
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzax zzax) {
        zzax.zza.putAll(this.zza);
    }

    public final Map<Integer, String> zzd() {
        return Collections.unmodifiableMap(this.zza);
    }
}
