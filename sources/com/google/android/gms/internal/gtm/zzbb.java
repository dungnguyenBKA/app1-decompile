package com.google.android.gms.internal.gtm;

import com.google.android.gms.analytics.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class zzbb extends k<zzbb> {
    private final List<sv> zza = new ArrayList();
    private final List<tv> zzb = new ArrayList();
    private final Map<String, List<sv>> zzc = new HashMap();

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.zza.isEmpty()) {
            hashMap.put("products", this.zza);
        }
        if (!this.zzb.isEmpty()) {
            hashMap.put("promotions", this.zzb);
        }
        if (!this.zzc.isEmpty()) {
            hashMap.put("impressions", this.zzc);
        }
        hashMap.put("productAction", null);
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzbb zzbb) {
        zzbb zzbb2 = zzbb;
        zzbb2.zza.addAll(this.zza);
        zzbb2.zzb.addAll(this.zzb);
        for (Map.Entry<String, List<sv>> entry : this.zzc.entrySet()) {
            String key = entry.getKey();
            for (sv svVar : entry.getValue()) {
                if (svVar != null) {
                    String str = key == null ? "" : key;
                    if (!zzbb2.zzc.containsKey(str)) {
                        zzbb2.zzc.put(str, new ArrayList());
                    }
                    zzbb2.zzc.get(str).add(svVar);
                }
            }
        }
    }

    public final List<sv> zzd() {
        return Collections.unmodifiableList(this.zza);
    }

    public final List<tv> zze() {
        return Collections.unmodifiableList(this.zzb);
    }

    public final Map<String, List<sv>> zzf() {
        return this.zzc;
    }
}
