package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

public final class zznm implements zzkh {
    private final zzpn zzapt = new zzpn(32);
    private final zzol zzbdp;
    private final int zzbge;
    private final zznk zzbgf = new zznk();
    private final zznj zzbgg = new zznj();
    private final AtomicInteger zzbgh = new AtomicInteger();
    private zznl zzbgi;
    private zznl zzbgj;
    private zzht zzbgk;
    private boolean zzbgl;
    private zzht zzbgm;
    private long zzbgn;
    private int zzbgo;
    private zzno zzbgp;

    public zznm(zzol zzol) {
        this.zzbdp = zzol;
        int zzio = zzol.zzio();
        this.zzbge = zzio;
        this.zzbgo = zzio;
        zznl zznl = new zznl(0, zzio);
        this.zzbgi = zznl;
        this.zzbgj = zznl;
    }

    private final int zzba(int i) {
        if (this.zzbgo == this.zzbge) {
            this.zzbgo = 0;
            zznl zznl = this.zzbgj;
            if (zznl.zzbgb) {
                this.zzbgj = zznl.zzbgd;
            }
            zznl zznl2 = this.zzbgj;
            zzom zzin = this.zzbdp.zzin();
            zznl zznl3 = new zznl(this.zzbgj.zzasu, this.zzbge);
            zznl2.zzbgc = zzin;
            zznl2.zzbgd = zznl3;
            zznl2.zzbgb = true;
        }
        return Math.min(i, this.zzbge - this.zzbgo);
    }

    private final void zzej(long j) {
        while (true) {
            zznl zznl = this.zzbgi;
            if (j >= zznl.zzasu) {
                this.zzbdp.zza(zznl.zzbgc);
                this.zzbgi = this.zzbgi.zzih();
            } else {
                return;
            }
        }
    }

    private final void zzib() {
        this.zzbgf.zzib();
        zznl zznl = this.zzbgi;
        if (zznl.zzbgb) {
            zznl zznl2 = this.zzbgj;
            int i = (((int) (zznl2.zzbga - zznl.zzbga)) / this.zzbge) + (zznl2.zzbgb ? 1 : 0);
            zzom[] zzomArr = new zzom[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzomArr[i2] = zznl.zzbgc;
                zznl = zznl.zzih();
            }
            this.zzbdp.zza(zzomArr);
        }
        zznl zznl3 = new zznl(0, this.zzbge);
        this.zzbgi = zznl3;
        this.zzbgj = zznl3;
        this.zzbgn = 0;
        this.zzbgo = this.zzbge;
        this.zzbdp.zzn();
    }

    private final boolean zzij() {
        return this.zzbgh.compareAndSet(0, 1);
    }

    private final void zzik() {
        if (!this.zzbgh.compareAndSet(1, 0)) {
            zzib();
        }
    }

    public final void disable() {
        if (this.zzbgh.getAndSet(2) == 0) {
            zzib();
        }
    }

    public final int zza(zzhv zzhv, zzjp zzjp, boolean z, boolean z2, long j) {
        int i;
        int zza = this.zzbgf.zza(zzhv, zzjp, z, z2, this.zzbgk, this.zzbgg);
        if (zza == -5) {
            this.zzbgk = zzhv.zzahz;
            return -5;
        } else if (zza == -4) {
            if (!zzjp.zzgi()) {
                if (zzjp.zzaol < j) {
                    zzjp.zzaa(RecyclerView.UNDEFINED_DURATION);
                }
                if (zzjp.isEncrypted()) {
                    zznj zznj = this.zzbgg;
                    long j2 = zznj.zzawv;
                    this.zzapt.reset(1);
                    zza(j2, this.zzapt.data, 1);
                    long j3 = j2 + 1;
                    byte b = this.zzapt.data[0];
                    boolean z3 = (b & 128) != 0;
                    int i2 = b & Byte.MAX_VALUE;
                    zzjl zzjl = zzjp.zzaok;
                    if (zzjl.iv == null) {
                        zzjl.iv = new byte[16];
                    }
                    zza(j3, zzjl.iv, i2);
                    long j4 = j3 + ((long) i2);
                    if (z3) {
                        this.zzapt.reset(2);
                        zza(j4, this.zzapt.data, 2);
                        j4 += 2;
                        i = this.zzapt.readUnsignedShort();
                    } else {
                        i = 1;
                    }
                    zzjl zzjl2 = zzjp.zzaok;
                    int[] iArr = zzjl2.numBytesOfClearData;
                    if (iArr == null || iArr.length < i) {
                        iArr = new int[i];
                    }
                    int[] iArr2 = zzjl2.numBytesOfEncryptedData;
                    if (iArr2 == null || iArr2.length < i) {
                        iArr2 = new int[i];
                    }
                    if (z3) {
                        int i3 = i * 6;
                        this.zzapt.reset(i3);
                        zza(j4, this.zzapt.data, i3);
                        j4 += (long) i3;
                        this.zzapt.zzbi(0);
                        for (int i4 = 0; i4 < i; i4++) {
                            iArr[i4] = this.zzapt.readUnsignedShort();
                            iArr2[i4] = this.zzapt.zzja();
                        }
                    } else {
                        iArr[0] = 0;
                        iArr2[0] = zznj.size - ((int) (j4 - zznj.zzawv));
                    }
                    zzkk zzkk = zznj.zzarp;
                    zzjl zzjl3 = zzjp.zzaok;
                    zzjl3.set(i, iArr, iArr2, zzkk.zzapi, zzjl3.iv, zzkk.zzaph);
                    long j5 = zznj.zzawv;
                    int i5 = (int) (j4 - j5);
                    zznj.zzawv = j5 + ((long) i5);
                    zznj.size -= i5;
                }
                zzjp.zzad(this.zzbgg.size);
                zznj zznj2 = this.zzbgg;
                long j6 = zznj2.zzawv;
                ByteBuffer byteBuffer = zzjp.zzdr;
                int i6 = zznj2.size;
                zzej(j6);
                while (i6 > 0) {
                    int i7 = (int) (j6 - this.zzbgi.zzbga);
                    int min = Math.min(i6, this.zzbge - i7);
                    zzom zzom = this.zzbgi.zzbgc;
                    byteBuffer.put(zzom.data, i7 + 0, min);
                    j6 += (long) min;
                    i6 -= min;
                    if (j6 == this.zzbgi.zzasu) {
                        this.zzbdp.zza(zzom);
                        this.zzbgi = this.zzbgi.zzih();
                    }
                }
                zzej(this.zzbgg.zzbfn);
            }
            return -4;
        } else if (zza == -3) {
            return -3;
        } else {
            throw new IllegalStateException();
        }
    }

    public final boolean zze(long j, boolean z) {
        long zzd = this.zzbgf.zzd(j, z);
        if (zzd == -1) {
            return false;
        }
        zzej(zzd);
        return true;
    }

    public final long zzhv() {
        return this.zzbgf.zzhv();
    }

    public final int zzid() {
        return this.zzbgf.zzid();
    }

    public final boolean zzie() {
        return this.zzbgf.zzie();
    }

    public final zzht zzif() {
        return this.zzbgf.zzif();
    }

    public final void zzii() {
        long zzig = this.zzbgf.zzig();
        if (zzig != -1) {
            zzej(zzig);
        }
    }

    public final void zzk(boolean z) {
        int andSet = this.zzbgh.getAndSet(z ? 0 : 2);
        zzib();
        this.zzbgf.zzic();
        if (andSet == 2) {
            this.zzbgk = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zze(zzht zzht) {
        zzht zzht2 = zzht == null ? null : zzht;
        boolean zzg = this.zzbgf.zzg(zzht2);
        this.zzbgm = zzht;
        this.zzbgl = false;
        zzno zzno = this.zzbgp;
        if (zzno != null && zzg) {
            zzno.zzf(zzht2);
        }
    }

    private final void zza(long j, byte[] bArr, int i) {
        zzej(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zzbgi.zzbga);
            int min = Math.min(i - i2, this.zzbge - i3);
            zzom zzom = this.zzbgi.zzbgc;
            System.arraycopy(zzom.data, i3 + 0, bArr, i2, min);
            j += (long) min;
            i2 += min;
            if (j == this.zzbgi.zzasu) {
                this.zzbdp.zza(zzom);
                this.zzbgi = this.zzbgi.zzih();
            }
        }
    }

    public final void zza(zzno zzno) {
        this.zzbgp = zzno;
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final int zza(zzjz zzjz, int i, boolean z) {
        if (!zzij()) {
            int zzaf = zzjz.zzaf(i);
            if (zzaf != -1) {
                return zzaf;
            }
            throw new EOFException();
        }
        try {
            int read = zzjz.read(this.zzbgj.zzbgc.data, this.zzbgo + 0, zzba(i));
            if (read != -1) {
                this.zzbgo += read;
                this.zzbgn += (long) read;
                return read;
            }
            throw new EOFException();
        } finally {
            zzik();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zza(zzpn zzpn, int i) {
        if (!zzij()) {
            zzpn.zzbj(i);
            return;
        }
        while (i > 0) {
            int zzba = zzba(i);
            zzpn.zze(this.zzbgj.zzbgc.data, this.zzbgo + 0, zzba);
            this.zzbgo += zzba;
            this.zzbgn += (long) zzba;
            i -= zzba;
        }
        zzik();
    }

    @Override // com.google.android.gms.internal.ads.zzkh
    public final void zza(long j, int i, int i2, int i3, zzkk zzkk) {
        if (!zzij()) {
            this.zzbgf.zzei(j);
            return;
        }
        try {
            this.zzbgf.zza(j, i, (this.zzbgn - ((long) i2)) - ((long) i3), i2, zzkk);
        } finally {
            zzik();
        }
    }
}
