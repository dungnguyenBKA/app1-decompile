package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zzor implements zzol {
    private final boolean zzbid;
    private final int zzbie;
    private final byte[] zzbif;
    private final zzom[] zzbig;
    private int zzbih;
    private int zzbii;
    private int zzbij;
    private zzom[] zzbik;

    public zzor(boolean z, int i) {
        this(true, 65536, 0);
    }

    public final synchronized void reset() {
        if (this.zzbid) {
            zzbf(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final synchronized void zza(zzom zzom) {
        zzom[] zzomArr = this.zzbig;
        zzomArr[0] = zzom;
        zza(zzomArr);
    }

    public final synchronized void zzbf(int i) {
        boolean z = i < this.zzbih;
        this.zzbih = i;
        if (z) {
            zzn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final synchronized zzom zzin() {
        zzom zzom;
        this.zzbii++;
        int i = this.zzbij;
        if (i > 0) {
            zzom[] zzomArr = this.zzbik;
            int i2 = i - 1;
            this.zzbij = i2;
            zzom = zzomArr[i2];
            zzomArr[i2] = null;
        } else {
            zzom = new zzom(new byte[this.zzbie], 0);
        }
        return zzom;
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final int zzio() {
        return this.zzbie;
    }

    public final synchronized int zziq() {
        return this.zzbii * this.zzbie;
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final synchronized void zzn() {
        int max = Math.max(0, zzpt.zzf(this.zzbih, this.zzbie) - this.zzbii);
        int i = this.zzbij;
        if (max < i) {
            Arrays.fill(this.zzbik, max, i, (Object) null);
            this.zzbij = max;
        }
    }

    private zzor(boolean z, int i, int i2) {
        zzpg.checkArgument(true);
        zzpg.checkArgument(true);
        this.zzbid = true;
        this.zzbie = 65536;
        this.zzbij = 0;
        this.zzbik = new zzom[100];
        this.zzbif = null;
        this.zzbig = new zzom[1];
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final synchronized void zza(zzom[] zzomArr) {
        boolean z;
        int i = this.zzbij;
        int length = zzomArr.length + i;
        zzom[] zzomArr2 = this.zzbik;
        if (length >= zzomArr2.length) {
            this.zzbik = (zzom[]) Arrays.copyOf(zzomArr2, Math.max(zzomArr2.length << 1, i + zzomArr.length));
        }
        for (zzom zzom : zzomArr) {
            byte[] bArr = zzom.data;
            if (bArr != null) {
                if (bArr.length != this.zzbie) {
                    z = false;
                    zzpg.checkArgument(z);
                    zzom[] zzomArr3 = this.zzbik;
                    int i2 = this.zzbij;
                    this.zzbij = i2 + 1;
                    zzomArr3[i2] = zzom;
                }
            }
            z = true;
            zzpg.checkArgument(z);
            zzom[] zzomArr32 = this.zzbik;
            int i22 = this.zzbij;
            this.zzbij = i22 + 1;
            zzomArr32[i22] = zzom;
        }
        this.zzbii -= zzomArr.length;
        notifyAll();
    }
}
