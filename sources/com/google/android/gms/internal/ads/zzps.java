package com.google.android.gms.internal.ads;

import android.os.SystemClock;

public final class zzps implements zzpk {
    private boolean started;
    private zzhz zzafi = zzhz.zzaia;
    private long zzbkl;
    private long zzbkm;

    public final void start() {
        if (!this.started) {
            this.zzbkm = SystemClock.elapsedRealtime();
            this.started = true;
        }
    }

    public final void stop() {
        if (this.started) {
            zzel(zzgc());
            this.started = false;
        }
    }

    public final void zza(zzpk zzpk) {
        zzel(zzpk.zzgc());
        this.zzafi = zzpk.zzfs();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzb(zzhz zzhz) {
        if (this.started) {
            zzel(zzgc());
        }
        this.zzafi = zzhz;
        return zzhz;
    }

    public final void zzel(long j) {
        this.zzbkl = j;
        if (this.started) {
            this.zzbkm = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzfs() {
        return this.zzafi;
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final long zzgc() {
        long j;
        long j2 = this.zzbkl;
        if (!this.started) {
            return j2;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzbkm;
        zzhz zzhz = this.zzafi;
        if (zzhz.zzaib == 1.0f) {
            j = zzhf.zzdp(elapsedRealtime);
        } else {
            j = zzhz.zzdu(elapsedRealtime);
        }
        return j2 + j;
    }
}
