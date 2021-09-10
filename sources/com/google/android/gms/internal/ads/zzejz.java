package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzejz {
    private final byte[] buffer;
    private final zzekl zzime;

    private zzejz(int i) {
        byte[] bArr = new byte[i];
        this.buffer = bArr;
        this.zzime = zzekl.zzv(bArr);
    }

    public final zzejr zzbgq() {
        this.zzime.zzbht();
        return new zzekb(this.buffer);
    }

    public final zzekl zzbgr() {
        return this.zzime;
    }

    /* synthetic */ zzejz(int i, zzejq zzejq) {
        this(i);
    }
}
