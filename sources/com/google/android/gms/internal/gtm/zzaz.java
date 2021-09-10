package com.google.android.gms.internal.gtm;

import com.google.android.gms.analytics.k;
import com.google.android.gms.common.internal.n;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public final class zzaz extends k<zzaz> {
    private final Map<String, Object> zza = new HashMap();

    public final String toString() {
        return k.zza(this.zza);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final void zzc(zzaz zzaz) {
        zzaz zzaz2 = zzaz;
        Objects.requireNonNull(zzaz2, "null reference");
        zzaz2.zza.putAll(this.zza);
    }

    public final Map<String, Object> zzd() {
        return Collections.unmodifiableMap(this.zza);
    }

    public final void zze(String str, String str2) {
        n.e(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        n.f(str, "Name can not be empty or \"&\"");
        this.zza.put(str, str2);
    }
}
