package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzbag implements zzdzl<T> {
    private final /* synthetic */ zzbad zzeis;

    zzbag(zzbad zzbad) {
        this.zzeis = zzbad;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(T t) {
        this.zzeis.zzeip.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzeis.zzeip.set(-1);
    }
}
