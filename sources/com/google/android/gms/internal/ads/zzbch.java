package com.google.android.gms.internal.ads;

public final class zzbch implements zzhx {
    private int zzbih;
    private final zzor zzeof;
    private long zzeog;
    private long zzeoh;
    private long zzeoi;
    private long zzeoj;
    private boolean zzeok;

    zzbch() {
        this(15000, 30000, 2500, 5000);
    }

    private final void zzk(boolean z) {
        this.zzbih = 0;
        this.zzeok = false;
        if (z) {
            this.zzeof.reset();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void onStopped() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zza(zzhy[] zzhyArr, zznu zznu, zzoi zzoi) {
        this.zzbih = 0;
        for (int i = 0; i < zzhyArr.length; i++) {
            if (zzoi.zzbe(i) != null) {
                this.zzbih = zzpt.zzbp(zzhyArr[i].getTrackType()) + this.zzbih;
            }
        }
        this.zzeof.zzbf(this.zzbih);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final synchronized boolean zzc(long j, boolean z) {
        boolean z2;
        long j2 = z ? this.zzeoj : this.zzeoi;
        if (j2 <= 0 || j >= j2) {
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    public final synchronized void zzdm(int i) {
        this.zzeoi = ((long) i) * 1000;
    }

    public final synchronized void zzdn(int i) {
        this.zzeoj = ((long) i) * 1000;
    }

    public final synchronized void zzds(int i) {
        this.zzeog = ((long) i) * 1000;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final synchronized boolean zzdt(long j) {
        boolean z;
        char c;
        z = false;
        if (j > this.zzeoh) {
            c = 0;
        } else {
            c = j < this.zzeog ? (char) 2 : 1;
        }
        boolean z2 = this.zzeof.zziq() >= this.zzbih;
        if (c == 2 || (c == 1 && this.zzeok && !z2)) {
            z = true;
        }
        this.zzeok = z;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzfb() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzfc() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final zzol zzfd() {
        return this.zzeof;
    }

    private zzbch(int i, int i2, long j, long j2) {
        this.zzeof = new zzor(true, 65536);
        this.zzeog = 15000000;
        this.zzeoh = 30000000;
        this.zzeoi = 2500000;
        this.zzeoj = 5000000;
    }

    public final synchronized void zzdt(int i) {
        this.zzeoh = ((long) i) * 1000;
    }
}
