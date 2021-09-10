package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
public final class zzacd {
    private final Map<String, zzaca> zzdbh = new HashMap();
    private final zzacc zzdbi;

    public zzacd(zzacc zzacc) {
        this.zzdbi = zzacc;
    }

    public final void zza(String str, zzaca zzaca) {
        this.zzdbh.put(str, zzaca);
    }

    public final void zzb(String str, String str2, long j) {
        zzaca zzaca;
        zzacc zzacc = this.zzdbi;
        zzaca zzaca2 = this.zzdbh.get(str2);
        String[] strArr = {str};
        if (!(zzacc == null || zzaca2 == null)) {
            zzacc.zza(zzaca2, j, strArr);
        }
        Map<String, zzaca> map = this.zzdbh;
        zzacc zzacc2 = this.zzdbi;
        if (zzacc2 == null) {
            zzaca = null;
        } else {
            zzaca = zzacc2.zzex(j);
        }
        map.put(str, zzaca);
    }

    public final zzacc zzsp() {
        return this.zzdbi;
    }
}
