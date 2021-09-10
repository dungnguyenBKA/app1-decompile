package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public final class zzcim {
    @GuardedBy("this")
    private final Map<String, zzcij> zzgkj = new HashMap();

    zzcim() {
    }

    @Nullable
    private final synchronized zzcij zzgd(String str) {
        return this.zzgkj.get(str);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void zza(String str, zzdog zzdog) {
        if (!this.zzgkj.containsKey(str)) {
            try {
                this.zzgkj.put(str, new zzcij(str, zzdog.zzvc(), zzdog.zzvd()));
            } catch (zzdnt unused) {
            }
        }
    }

    @Nullable
    public final zzcij zzi(List<String> list) {
        for (String str : list) {
            zzcij zzgd = zzgd(str);
            if (zzgd != null) {
                return zzgd;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void zza(String str, zzapk zzapk) {
        if (!this.zzgkj.containsKey(str)) {
            try {
                this.zzgkj.put(str, new zzcij(str, zzapk.zzvc(), zzapk.zzvd()));
            } catch (Throwable unused) {
            }
        }
    }
}
