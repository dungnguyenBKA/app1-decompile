package com.google.android.gms.internal.ads;

public abstract class zzekc {
    int zziml;
    int zzimm;
    int zzimn;
    zzekj zzimo;
    private boolean zzimp;

    private zzekc() {
        this.zzimm = 100;
        this.zzimn = Integer.MAX_VALUE;
        this.zzimp = false;
    }

    static zzekc zzb(byte[] bArr, int i, int i2, boolean z) {
        zzeke zzeke = new zzeke(bArr, i, i2, z);
        try {
            zzeke.zzgf(i2);
            return zzeke;
        } catch (zzelo e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static long zzfg(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static int zzgh(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract double readDouble();

    public abstract float readFloat();

    public abstract String readString();

    public abstract int zzbgs();

    public abstract long zzbgt();

    public abstract long zzbgu();

    public abstract int zzbgv();

    public abstract long zzbgw();

    public abstract int zzbgx();

    public abstract boolean zzbgy();

    public abstract String zzbgz();

    public abstract zzejr zzbha();

    public abstract int zzbhb();

    public abstract int zzbhc();

    public abstract int zzbhd();

    public abstract long zzbhe();

    public abstract int zzbhf();

    public abstract long zzbhg();

    /* access modifiers changed from: package-private */
    public abstract long zzbhh();

    public abstract boolean zzbhi();

    public abstract int zzbhj();

    public abstract void zzgd(int i);

    public abstract boolean zzge(int i);

    public abstract int zzgf(int i);

    public abstract void zzgg(int i);
}
