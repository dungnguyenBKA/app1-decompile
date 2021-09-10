package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzbok implements zzdzl<zzbnt> {
    private final /* synthetic */ zzdzl zzfwr;
    private final /* synthetic */ zzboe zzfws;

    zzbok(zzboe zzboe, zzdzl zzdzl) {
        this.zzfws = zzboe;
        this.zzfwr = zzdzl;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbnt zzbnt) {
        this.zzfws.zzaku();
        this.zzfwr.onSuccess(zzbnt);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfws.zzaku();
        this.zzfwr.zzb(th);
    }
}
