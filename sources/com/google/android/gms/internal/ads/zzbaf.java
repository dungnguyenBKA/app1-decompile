package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzbaf implements zzdzl<T> {
    private final /* synthetic */ zzbae zzeiq;
    private final /* synthetic */ zzbac zzeir;

    zzbaf(zzbad zzbad, zzbae zzbae, zzbac zzbac) {
        this.zzeiq = zzbae;
        this.zzeir = zzbac;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(T t) {
        this.zzeiq.zzg(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzeir.run();
    }
}
