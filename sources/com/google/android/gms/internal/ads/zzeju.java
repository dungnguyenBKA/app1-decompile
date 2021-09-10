package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzeju extends zzekb {
    private final int zzimc;
    private final int zzimd;

    zzeju(byte[] bArr, int i, int i2) {
        super(bArr);
        zzejr.zzi(i, i + i2, bArr.length);
        this.zzimc = i;
        this.zzimd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzejr, com.google.android.gms.internal.ads.zzekb
    public final int size() {
        return this.zzimd;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr, com.google.android.gms.internal.ads.zzekb
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzimk, zzbgp() + i, bArr, i2, i3);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzekb
    public final int zzbgp() {
        return this.zzimc;
    }

    @Override // com.google.android.gms.internal.ads.zzejr, com.google.android.gms.internal.ads.zzekb
    public final byte zzfz(int i) {
        zzejr.zzab(i, size());
        return this.zzimk[this.zzimc + i];
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejr, com.google.android.gms.internal.ads.zzekb
    public final byte zzga(int i) {
        return this.zzimk[this.zzimc + i];
    }
}
