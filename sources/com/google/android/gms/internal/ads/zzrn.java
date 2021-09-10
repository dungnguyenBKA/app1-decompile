package com.google.android.gms.internal.ads;

final class zzrn implements Runnable {
    private final /* synthetic */ zzrk zzbtf;

    zzrn(zzrk zzrk) {
        this.zzbtf = zzrk;
    }

    public final void run() {
        synchronized (zzrk.zza(this.zzbtf)) {
            if (!zzrk.zzb(this.zzbtf) || !zzrk.zzc(this.zzbtf)) {
                zzazk.zzdy("App is still foreground");
            } else {
                zzrk.zza(this.zzbtf, false);
                zzazk.zzdy("App went background");
                for (zzrm zzrm : zzrk.zzd(this.zzbtf)) {
                    try {
                        zzrm.zzp(false);
                    } catch (Exception e) {
                        zzazk.zzc("", e);
                    }
                }
            }
        }
    }
}
