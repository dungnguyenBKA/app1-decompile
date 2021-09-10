package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzeak extends zzdzs<zzdzw<V>> {
    private final /* synthetic */ zzeah zzibd;
    private final zzdyv<V> zzibe;

    zzeak(zzeah zzeah, zzdyv<V> zzdyv) {
        this.zzibd = zzeah;
        this.zzibe = (zzdyv) zzdwl.checkNotNull(zzdyv);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final boolean isDone() {
        return this.zzibd.isDone();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final /* synthetic */ void zzb(Object obj, Throwable th) {
        zzdzw zzdzw = (zzdzw) obj;
        if (th == null) {
            this.zzibd.setFuture(zzdzw);
        } else {
            this.zzibd.setException(th);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final /* synthetic */ Object zzbab() {
        return (zzdzw) zzdwl.zza(this.zzibe.zzatm(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzibe);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final String zzbac() {
        return this.zzibe.toString();
    }
}
