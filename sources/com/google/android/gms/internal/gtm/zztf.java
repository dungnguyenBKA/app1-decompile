package com.google.android.gms.internal.gtm;

final class zztf extends zztj {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh = Integer.MAX_VALUE;

    /* synthetic */ zztf(byte[] bArr, int i, int i2, boolean z, zzte zzte) {
        super(null);
        this.zze = bArr;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zzb(int i) {
        int i2 = this.zzh;
        this.zzh = 0;
        int i3 = this.zzf + this.zzg;
        this.zzf = i3;
        if (i3 > 0) {
            this.zzg = i3;
            this.zzf = 0;
        } else {
            this.zzg = 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zzc() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final zztd zzd() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final String zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final String zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final void zzg(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final void zzh(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzi() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzj() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzk(int i) {
        throw null;
    }
}
