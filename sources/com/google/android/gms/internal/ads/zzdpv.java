package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdpv implements zzdzl<zzdpm<AdT>> {
    private final /* synthetic */ zzdpu zzhox;

    zzdpv(zzdpu zzdpu) {
        this.zzhox = zzdpu;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Object obj) {
        zzdpm<?> zzdpm = (zzdpm) obj;
        synchronized (this.zzhox) {
            this.zzhox.zzhou.zza(zzdpm);
            if (this.zzhox.zzhot != zzdpz.zzhpa) {
                this.zzhox.zzhhi.zza(this.zzhox.zzhoq.zzaup(), zzdpm);
            }
            int i = this.zzhox.zzhot;
            int i2 = zzdpz.zzhoz;
            if (i == i2) {
                zzdpu zzdpu = this.zzhox;
                zzdpu.zzd((zzdpu) zzdpu.zzhoq);
            }
            this.zzhox.zzhot = i2;
            this.zzhox.zzhor.set(zzdpm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        synchronized (this.zzhox) {
            this.zzhox.zzhou.zzb(th);
            this.zzhox.zzhor.setException(th);
        }
    }
}
