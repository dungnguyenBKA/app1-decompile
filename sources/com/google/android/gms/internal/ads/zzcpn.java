package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class zzcpn implements zzdrp {
    private final zzdsa zzgqf;
    private final Map<zzdrk, String> zzgqh = new HashMap();
    private final Map<zzdrk, String> zzgqi = new HashMap();

    public zzcpn(Set<zzcpq> set, zzdsa zzdsa) {
        this.zzgqf = zzdsa;
        for (zzcpq zzcpq : set) {
            this.zzgqh.put(zzcpq.zza(zzcpq), zzcpq.zzb(zzcpq));
            this.zzgqi.put(zzcpq.zzc(zzcpq), zzcpq.zzb(zzcpq));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str, Throwable th) {
        zzdsa zzdsa = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsa.zzv(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.zzgqi.containsKey(zzdrk)) {
            zzdsa zzdsa2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqi.get(zzdrk));
            zzdsa2.zzv(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrk, String str) {
        zzdsa zzdsa = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsa.zzgz(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.zzgqh.containsKey(zzdrk)) {
            zzdsa zzdsa2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqh.get(zzdrk));
            zzdsa2.zzgz(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrk, String str) {
        zzdsa zzdsa = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsa.zzv(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.zzgqi.containsKey(zzdrk)) {
            zzdsa zzdsa2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqi.get(zzdrk));
            zzdsa2.zzv(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }
}
