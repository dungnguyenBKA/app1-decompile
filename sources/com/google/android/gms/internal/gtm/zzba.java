package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.analytics.k;
import java.util.HashMap;

public final class zzba extends k<zzba> {
    public int zza;
    public int zzb;
    private String zzc;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.zzc);
        hashMap.put("screenColors", 0);
        hashMap.put("screenWidth", Integer.valueOf(this.zza));
        hashMap.put("screenHeight", Integer.valueOf(this.zzb));
        hashMap.put("viewportWidth", 0);
        hashMap.put("viewportHeight", 0);
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzba zzba) {
        zzba zzba2 = zzba;
        int i = this.zza;
        if (i != 0) {
            zzba2.zza = i;
        }
        int i2 = this.zzb;
        if (i2 != 0) {
            zzba2.zzb = i2;
        }
        if (!TextUtils.isEmpty(this.zzc)) {
            zzba2.zzc = this.zzc;
        }
    }

    public final String zzd() {
        return this.zzc;
    }

    public final void zze(String str) {
        this.zzc = str;
    }
}
