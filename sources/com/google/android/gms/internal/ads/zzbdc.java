package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;

public final class zzbdc extends zza {
    final zzbbo zzeix;
    private final String zzekh;
    private final String[] zzeki;
    final zzbdd zzepm;

    zzbdc(zzbbo zzbbo, zzbdd zzbdd, String str, String[] strArr) {
        this.zzeix = zzbbo;
        this.zzepm = zzbdd;
        this.zzekh = str;
        this.zzeki = strArr;
        zzr.zzln().zza(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        try {
            this.zzepm.zze(this.zzekh, this.zzeki);
        } finally {
            zzj.zzeen.post(new zzbdb(this));
        }
    }
}
