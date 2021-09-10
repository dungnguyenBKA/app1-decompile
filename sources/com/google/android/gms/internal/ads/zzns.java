package com.google.android.gms.internal.ads;

public final class zzns extends zzid {
    private static final Object zzbgq = new Object();
    private final boolean zzaik;
    private final boolean zzail;
    private final long zzbgr;
    private final long zzbgs;
    private final long zzbgt;
    private final long zzbgu;

    public zzns(long j, boolean z) {
        this(j, j, 0, 0, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final zzie zza(int i, zzie zzie, boolean z, long j) {
        zzpg.zzc(i, 0, 1);
        boolean z2 = this.zzaik;
        long j2 = this.zzbgs;
        zzie.zzaih = null;
        zzie.zzaii = -9223372036854775807L;
        zzie.zzaij = -9223372036854775807L;
        zzie.zzaik = z2;
        zzie.zzail = false;
        zzie.zzaio = 0;
        zzie.zzaip = j2;
        zzie.zzaim = 0;
        zzie.zzain = 0;
        zzie.zzaiq = 0;
        return zzie;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzc(Object obj) {
        return zzbgq.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzff() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzfg() {
        return 1;
    }

    private zzns(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.zzbgr = j;
        this.zzbgs = j2;
        this.zzbgt = 0;
        this.zzbgu = 0;
        this.zzaik = z;
        this.zzail = false;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final zzif zza(int i, zzif zzif, boolean z) {
        zzpg.zzc(i, 0, 1);
        Object obj = z ? zzbgq : null;
        return zzif.zza(obj, obj, 0, this.zzbgr, 0, false);
    }
}
