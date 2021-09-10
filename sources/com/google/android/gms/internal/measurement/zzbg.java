package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public abstract class zzbg implements Runnable {
    final long zzh;
    final long zzi;
    final boolean zzj;
    final /* synthetic */ zzbr zzk;

    zzbg(zzbr zzbr, boolean z) {
        this.zzk = zzbr;
        this.zzh = zzbr.zza.a();
        this.zzi = zzbr.zza.b();
        this.zzj = z;
    }

    public final void run() {
        if (this.zzk.zzi) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e) {
            this.zzk.zzV(e, false, this.zzj);
            zzb();
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void zza();

    /* access modifiers changed from: protected */
    public void zzb() {
    }
}
