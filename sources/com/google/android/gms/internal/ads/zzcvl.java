package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

public final class zzcvl implements zzcro<zzdog, zzctg> {
    private final zzcin zzgmw;
    @GuardedBy("this")
    private final Map<String, zzcrl<zzdog, zzctg>> zzgvp = new HashMap();

    public zzcvl(zzcin zzcin) {
        this.zzgmw = zzcin;
    }

    @Override // com.google.android.gms.internal.ads.zzcro
    public final zzcrl<zzdog, zzctg> zzf(String str, JSONObject jSONObject) {
        synchronized (this) {
            zzcrl<zzdog, zzctg> zzcrl = this.zzgvp.get(str);
            if (zzcrl == null) {
                zzdog zzd = this.zzgmw.zzd(str, jSONObject);
                if (zzd == null) {
                    return null;
                }
                zzcrl = new zzcrl<>(zzd, new zzctg(), str);
                this.zzgvp.put(str, zzcrl);
            }
            return zzcrl;
        }
    }
}
