package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;

/* access modifiers changed from: package-private */
public final class zznk {
    private int length;
    private int[] zzaou = new int[AdError.NETWORK_ERROR_CODE];
    private long[] zzaov = new long[AdError.NETWORK_ERROR_CODE];
    private long[] zzaox = new long[AdError.NETWORK_ERROR_CODE];
    private int[] zzayl = new int[AdError.NETWORK_ERROR_CODE];
    private int zzbfo = AdError.NETWORK_ERROR_CODE;
    private int[] zzbfp = new int[AdError.NETWORK_ERROR_CODE];
    private zzkk[] zzbfq = new zzkk[AdError.NETWORK_ERROR_CODE];
    private zzht[] zzbfr = new zzht[AdError.NETWORK_ERROR_CODE];
    private int zzbfs;
    private int zzbft;
    private int zzbfu;
    private long zzbfv = Long.MIN_VALUE;
    private long zzbfw = Long.MIN_VALUE;
    private boolean zzbfx = true;
    private boolean zzbfy = true;
    private zzht zzbfz;

    public final synchronized int zza(zzhv zzhv, zzjp zzjp, boolean z, boolean z2, zzht zzht, zznj zznj) {
        long j;
        if (zzie()) {
            if (!z) {
                zzht[] zzhtArr = this.zzbfr;
                int i = this.zzbft;
                if (zzhtArr[i] == zzht) {
                    if (zzjp.zzdr == null) {
                        return -3;
                    }
                    zzjp.zzaol = this.zzaox[i];
                    zzjp.setFlags(this.zzayl[i]);
                    int[] iArr = this.zzaou;
                    int i2 = this.zzbft;
                    zznj.size = iArr[i2];
                    zznj.zzawv = this.zzaov[i2];
                    zznj.zzarp = this.zzbfq[i2];
                    this.zzbfv = Math.max(this.zzbfv, zzjp.zzaol);
                    int i3 = this.length - 1;
                    this.length = i3;
                    int i4 = this.zzbft + 1;
                    this.zzbft = i4;
                    this.zzbfs++;
                    if (i4 == this.zzbfo) {
                        this.zzbft = 0;
                    }
                    if (i3 > 0) {
                        j = this.zzaov[this.zzbft];
                    } else {
                        j = zznj.zzawv + ((long) zznj.size);
                    }
                    zznj.zzbfn = j;
                    return -4;
                }
            }
            zzhv.zzahz = this.zzbfr[this.zzbft];
            return -5;
        } else if (z2) {
            zzjp.setFlags(4);
            return -4;
        } else {
            zzht zzht2 = this.zzbfz;
            if (zzht2 == null || (!z && zzht2 == zzht)) {
                return -3;
            }
            zzhv.zzahz = zzht2;
            return -5;
        }
    }

    public final synchronized long zzd(long j, boolean z) {
        if (zzie()) {
            long[] jArr = this.zzaox;
            int i = this.zzbft;
            if (j >= jArr[i]) {
                if (j > this.zzbfw && !z) {
                    return -1;
                }
                int i2 = 0;
                int i3 = -1;
                while (i != this.zzbfu && this.zzaox[i] <= j) {
                    if ((this.zzayl[i] & 1) != 0) {
                        i3 = i2;
                    }
                    i = (i + 1) % this.zzbfo;
                    i2++;
                }
                if (i3 == -1) {
                    return -1;
                }
                int i4 = (this.zzbft + i3) % this.zzbfo;
                this.zzbft = i4;
                this.zzbfs += i3;
                this.length -= i3;
                return this.zzaov[i4];
            }
        }
        return -1;
    }

    public final synchronized void zzei(long j) {
        this.zzbfw = Math.max(this.zzbfw, j);
    }

    public final synchronized boolean zzg(zzht zzht) {
        if (zzht == null) {
            this.zzbfy = true;
            return false;
        }
        this.zzbfy = false;
        if (zzpt.zza(zzht, this.zzbfz)) {
            return false;
        }
        this.zzbfz = zzht;
        return true;
    }

    public final synchronized long zzhv() {
        return Math.max(this.zzbfv, this.zzbfw);
    }

    public final void zzib() {
        this.zzbfs = 0;
        this.zzbft = 0;
        this.zzbfu = 0;
        this.length = 0;
        this.zzbfx = true;
    }

    public final void zzic() {
        this.zzbfv = Long.MIN_VALUE;
        this.zzbfw = Long.MIN_VALUE;
    }

    public final int zzid() {
        return this.zzbfs + this.length;
    }

    public final synchronized boolean zzie() {
        return this.length != 0;
    }

    public final synchronized zzht zzif() {
        if (this.zzbfy) {
            return null;
        }
        return this.zzbfz;
    }

    public final synchronized long zzig() {
        if (!zzie()) {
            return -1;
        }
        int i = this.zzbft;
        int i2 = this.length;
        int i3 = this.zzbfo;
        int i4 = ((i + i2) - 1) % i3;
        this.zzbft = (i + i2) % i3;
        this.zzbfs += i2;
        this.length = 0;
        return this.zzaov[i4] + ((long) this.zzaou[i4]);
    }

    public final synchronized void zza(long j, int i, long j2, int i2, zzkk zzkk) {
        if (this.zzbfx) {
            if ((i & 1) != 0) {
                this.zzbfx = false;
            } else {
                return;
            }
        }
        zzpg.checkState(!this.zzbfy);
        zzei(j);
        long[] jArr = this.zzaox;
        int i3 = this.zzbfu;
        jArr[i3] = j;
        long[] jArr2 = this.zzaov;
        jArr2[i3] = j2;
        this.zzaou[i3] = i2;
        this.zzayl[i3] = i;
        this.zzbfq[i3] = zzkk;
        this.zzbfr[i3] = this.zzbfz;
        this.zzbfp[i3] = 0;
        int i4 = this.length + 1;
        this.length = i4;
        int i5 = this.zzbfo;
        if (i4 == i5) {
            int i6 = i5 + AdError.NETWORK_ERROR_CODE;
            int[] iArr = new int[i6];
            long[] jArr3 = new long[i6];
            long[] jArr4 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            zzkk[] zzkkArr = new zzkk[i6];
            zzht[] zzhtArr = new zzht[i6];
            int i7 = this.zzbft;
            int i8 = i5 - i7;
            System.arraycopy(jArr2, i7, jArr3, 0, i8);
            System.arraycopy(this.zzaox, this.zzbft, jArr4, 0, i8);
            System.arraycopy(this.zzayl, this.zzbft, iArr2, 0, i8);
            System.arraycopy(this.zzaou, this.zzbft, iArr3, 0, i8);
            System.arraycopy(this.zzbfq, this.zzbft, zzkkArr, 0, i8);
            System.arraycopy(this.zzbfr, this.zzbft, zzhtArr, 0, i8);
            System.arraycopy(this.zzbfp, this.zzbft, iArr, 0, i8);
            int i9 = this.zzbft;
            System.arraycopy(this.zzaov, 0, jArr3, i8, i9);
            System.arraycopy(this.zzaox, 0, jArr4, i8, i9);
            System.arraycopy(this.zzayl, 0, iArr2, i8, i9);
            System.arraycopy(this.zzaou, 0, iArr3, i8, i9);
            System.arraycopy(this.zzbfq, 0, zzkkArr, i8, i9);
            System.arraycopy(this.zzbfr, 0, zzhtArr, i8, i9);
            System.arraycopy(this.zzbfp, 0, iArr, i8, i9);
            this.zzaov = jArr3;
            this.zzaox = jArr4;
            this.zzayl = iArr2;
            this.zzaou = iArr3;
            this.zzbfq = zzkkArr;
            this.zzbfr = zzhtArr;
            this.zzbfp = iArr;
            this.zzbft = 0;
            int i10 = this.zzbfo;
            this.zzbfu = i10;
            this.length = i10;
            this.zzbfo = i6;
            return;
        }
        int i11 = i3 + 1;
        this.zzbfu = i11;
        if (i11 == i5) {
            this.zzbfu = 0;
        }
    }
}
