package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;

public final class zzbji implements zzbjf {
    private zzf zzedg;

    public zzbji(zzf zzf) {
        this.zzedg = zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        this.zzedg.zzap(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
