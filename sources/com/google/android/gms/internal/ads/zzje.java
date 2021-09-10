package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzje implements zziz {
    private final /* synthetic */ zzjc zzamw;

    private zzje(zzjc zzjc) {
        this.zzamw = zzjc;
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzc(int i, long j, long j2) {
        this.zzamw.zzamm.zza(i, j, j2);
        zzjc.zzb(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzek() {
        zzjc.zzgd();
        this.zzamw.zzams = true;
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzx(int i) {
        this.zzamw.zzamm.zzw(i);
        zzjc.zzx(i);
    }
}
