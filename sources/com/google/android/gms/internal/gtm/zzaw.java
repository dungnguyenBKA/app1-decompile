package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.analytics.k;
import java.util.HashMap;

public final class zzaw extends k<zzaw> {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    private String zzg;
    private String zzh;
    private String zzi;
    private String zzj;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.zza);
        hashMap.put("source", this.zzb);
        hashMap.put("medium", this.zzc);
        hashMap.put("keyword", this.zzd);
        hashMap.put("content", this.zze);
        hashMap.put(FacebookAdapter.KEY_ID, this.zzf);
        hashMap.put("adNetworkId", this.zzg);
        hashMap.put("gclid", this.zzh);
        hashMap.put("dclid", this.zzi);
        hashMap.put("aclid", this.zzj);
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzaw zzaw) {
        zzaw zzaw2 = zzaw;
        if (!TextUtils.isEmpty(this.zza)) {
            zzaw2.zza = this.zza;
        }
        if (!TextUtils.isEmpty(this.zzb)) {
            zzaw2.zzb = this.zzb;
        }
        if (!TextUtils.isEmpty(this.zzc)) {
            zzaw2.zzc = this.zzc;
        }
        if (!TextUtils.isEmpty(this.zzd)) {
            zzaw2.zzd = this.zzd;
        }
        if (!TextUtils.isEmpty(this.zze)) {
            zzaw2.zze = this.zze;
        }
        if (!TextUtils.isEmpty(this.zzf)) {
            zzaw2.zzf = this.zzf;
        }
        if (!TextUtils.isEmpty(this.zzg)) {
            zzaw2.zzg = this.zzg;
        }
        if (!TextUtils.isEmpty(this.zzh)) {
            zzaw2.zzh = this.zzh;
        }
        if (!TextUtils.isEmpty(this.zzi)) {
            zzaw2.zzi = this.zzi;
        }
        if (!TextUtils.isEmpty(this.zzj)) {
            zzaw2.zzj = this.zzj;
        }
    }

    public final String zzd() {
        return this.zzj;
    }

    public final String zze() {
        return this.zzg;
    }

    public final String zzf() {
        return this.zze;
    }

    public final String zzg() {
        return this.zzi;
    }

    public final String zzh() {
        return this.zzh;
    }

    public final String zzi() {
        return this.zzf;
    }

    public final String zzj() {
        return this.zzd;
    }

    public final String zzk() {
        return this.zzc;
    }

    public final String zzl() {
        return this.zza;
    }

    public final String zzm() {
        return this.zzb;
    }

    public final void zzn(String str) {
        this.zzj = str;
    }

    public final void zzo(String str) {
        this.zzg = str;
    }

    public final void zzp(String str) {
        this.zze = str;
    }

    public final void zzq(String str) {
        this.zzi = str;
    }

    public final void zzr(String str) {
        this.zzh = str;
    }

    public final void zzs(String str) {
        this.zzf = str;
    }

    public final void zzt(String str) {
        this.zzd = str;
    }

    public final void zzu(String str) {
        this.zzc = str;
    }

    public final void zzv(String str) {
        this.zza = str;
    }

    public final void zzw(String str) {
        this.zzb = str;
    }
}
