package com.google.android.gms.internal.ads;

public final class zzki implements zzkf {
    private final long zzaip;

    public zzki(long j) {
        this.zzaip = j;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long getDurationUs() {
        return this.zzaip;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final boolean isSeekable() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long zzdz(long j) {
        return 0;
    }
}
