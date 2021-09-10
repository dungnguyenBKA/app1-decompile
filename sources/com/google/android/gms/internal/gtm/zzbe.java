package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.analytics.k;
import java.util.HashMap;

public final class zzbe extends k<zzbe> {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private boolean zze;
    private boolean zzf;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("hitType", this.zza);
        hashMap.put("clientId", this.zzb);
        hashMap.put("userId", this.zzc);
        hashMap.put("androidAdId", this.zzd);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.zze));
        hashMap.put("sessionControl", null);
        hashMap.put("nonInteraction", Boolean.valueOf(this.zzf));
        hashMap.put("sampleRate", Double.valueOf(0.0d));
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzbe zzbe) {
        zzbe zzbe2 = zzbe;
        if (!TextUtils.isEmpty(this.zza)) {
            zzbe2.zza = this.zza;
        }
        if (!TextUtils.isEmpty(this.zzb)) {
            zzbe2.zzb = this.zzb;
        }
        if (!TextUtils.isEmpty(this.zzc)) {
            zzbe2.zzc = this.zzc;
        }
        if (!TextUtils.isEmpty(this.zzd)) {
            zzbe2.zzd = this.zzd;
        }
        if (this.zze) {
            zzbe2.zze = true;
        }
        TextUtils.isEmpty(null);
        if (this.zzf) {
            zzbe2.zzf = true;
        }
    }

    public final String zzd() {
        return this.zzd;
    }

    public final String zze() {
        return this.zzb;
    }

    public final String zzf() {
        return this.zza;
    }

    public final String zzg() {
        return this.zzc;
    }

    public final void zzh(boolean z) {
        this.zze = z;
    }

    public final void zzi(String str) {
        this.zzd = str;
    }

    public final void zzj(String str) {
        this.zzb = str;
    }

    public final void zzk(String str) {
        this.zza = "data";
    }

    public final void zzl(boolean z) {
        this.zzf = true;
    }

    public final void zzm(String str) {
        this.zzc = str;
    }

    public final boolean zzn() {
        return this.zze;
    }

    public final boolean zzo() {
        return this.zzf;
    }
}
