package com.google.android.gms.internal.ads;

final class zzboh implements zzdzl<zzbnz> {
    private final /* synthetic */ zzdzl zzfwr;
    private final /* synthetic */ zzboe zzfws;

    zzboh(zzboe zzboe, zzdzl zzdzl) {
        this.zzfws = zzboe;
        this.zzfwr = zzdzl;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbnz zzbnz) {
        this.zzfws.zza(zzbnz.zzfwk, this.zzfwr);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfwr.zzb(th);
        this.zzfws.zzaku();
    }
}
