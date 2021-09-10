package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class zzeaj extends zzdzs<V> {
    private final Callable<V> zziai;
    private final /* synthetic */ zzeah zzibd;

    zzeaj(zzeah zzeah, Callable<V> callable) {
        this.zzibd = zzeah;
        this.zziai = (Callable) zzdwl.checkNotNull(callable);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final boolean isDone() {
        return this.zzibd.isDone();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final void zzb(V v, Throwable th) {
        if (th == null) {
            this.zzibd.set(v);
        } else {
            this.zzibd.setException(th);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final V zzbab() {
        return this.zziai.call();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final String zzbac() {
        return this.zziai.toString();
    }
}
