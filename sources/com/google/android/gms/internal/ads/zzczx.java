package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzczx implements zzdzl<zzdak> {
    private final /* synthetic */ zzaxx zzgzv;
    private final /* synthetic */ zzczo zzgzw;

    zzczx(zzczo zzczo, zzaxx zzaxx) {
        this.zzgzw = zzczo;
        this.zzgzv = zzaxx;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzdak zzdak) {
        zzdak zzdak2 = zzdak;
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
                if (this.zzgzw.zzboz.zzehz >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcze)).intValue()) {
                    if (zzdak2 == null) {
                        this.zzgzv.zza(null, null, null);
                        return;
                    } else {
                        this.zzgzv.zza(zzdak2.zzhae, zzdak2.zzhaf, zzdak2.zzhag);
                        return;
                    }
                }
            }
            if (zzdak2 == null) {
                this.zzgzv.zzj(null, null);
            } else {
                this.zzgzv.zzj(zzdak2.zzhae, zzdak2.zzhaf);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        try {
            zzaxx zzaxx = this.zzgzv;
            String valueOf = String.valueOf(th.getMessage());
            zzaxx.onError(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
