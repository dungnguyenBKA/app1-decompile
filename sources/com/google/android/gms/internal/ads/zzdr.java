package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdr implements zzdug {
    private final /* synthetic */ zzdsy zzvm;

    zzdr(zzdsy zzdsy) {
        this.zzvm = zzdsy;
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j) {
        this.zzvm.zzh(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j, String str) {
        this.zzvm.zzb(i, System.currentTimeMillis() - j, str);
    }
}
