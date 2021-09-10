package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;

public final class zzbju {
    private final Executor executor;
    private final String zzbro;
    private final zzamo zzfry;
    private zzbjz zzfrz;
    private final zzaif<Object> zzfsa = new zzbjt(this);
    private final zzaif<Object> zzfsb = new zzbjv(this);

    public zzbju(String str, zzamo zzamo, Executor executor2) {
        this.zzbro = str;
        this.zzfry = zzamo;
        this.executor = executor2;
    }

    /* access modifiers changed from: private */
    public final boolean zzn(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        if (TextUtils.isEmpty(str) || !str.equals(this.zzbro)) {
            return false;
        }
        return true;
    }

    public final void zza(zzbjz zzbjz) {
        this.zzfry.zzc("/updateActiveView", this.zzfsa);
        this.zzfry.zzc("/untrackActiveViewUnit", this.zzfsb);
        this.zzfrz = zzbjz;
    }

    public final void zzaix() {
        this.zzfry.zzd("/updateActiveView", this.zzfsa);
        this.zzfry.zzd("/untrackActiveViewUnit", this.zzfsb);
    }

    public final void zzb(zzbeb zzbeb) {
        zzbeb.zzb("/updateActiveView", this.zzfsa);
        zzbeb.zzb("/untrackActiveViewUnit", this.zzfsb);
    }

    public final void zza(zzbeb zzbeb) {
        zzbeb.zza("/updateActiveView", this.zzfsa);
        zzbeb.zza("/untrackActiveViewUnit", this.zzfsb);
    }
}
