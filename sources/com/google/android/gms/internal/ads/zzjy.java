package com.google.android.gms.internal.ads;

public final class zzjy implements zzkf {
    private final int length;
    private final long zzaip;
    private final int[] zzaou;
    private final long[] zzaov;
    private final long[] zzaow;
    private final long[] zzaox;

    public zzjy(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzaou = iArr;
        this.zzaov = jArr;
        this.zzaow = jArr2;
        this.zzaox = jArr3;
        int length2 = iArr.length;
        this.length = length2;
        if (length2 > 0) {
            this.zzaip = jArr2[length2 - 1] + jArr3[length2 - 1];
        } else {
            this.zzaip = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long getDurationUs() {
        return this.zzaip;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long zzdz(long j) {
        return this.zzaov[zzpt.zza(this.zzaox, j, true, true)];
    }
}
