package com.google.android.gms.internal.ads;

final class zzmx implements zznn {
    private final int track;
    private final /* synthetic */ zzms zzbdl;

    public zzmx(zzms zzms, int i) {
        this.zzbdl = zzms;
        this.track = i;
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final boolean isReady() {
        return this.zzbdl.zzaz(this.track);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final int zzb(zzhv zzhv, zzjp zzjp, boolean z) {
        return this.zzbdl.zza(this.track, zzhv, zzjp, z);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzeh(long j) {
        this.zzbdl.zze(this.track, j);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzhs() {
        this.zzbdl.zzhs();
    }
}
