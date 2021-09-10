package com.google.android.gms.internal.ads;

public final class zzpq {
    private byte[] data;
    private int zzbki;
    private int zzbkj = 0;
    private int zzbkk;

    public zzpq(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.zzbki = i;
        this.zzbkk = i2;
        zzjh();
    }

    private final boolean zzbn(int i) {
        if (2 > i || i >= this.zzbkk) {
            return false;
        }
        byte[] bArr = this.data;
        return bArr[i] == 3 && bArr[i + -2] == 0 && bArr[i - 1] == 0;
    }

    private final int zzjg() {
        int i = 0;
        int i2 = 0;
        while (!zzjd()) {
            i2++;
        }
        int i3 = (1 << i2) - 1;
        if (i2 > 0) {
            i = zzbl(i2);
        }
        return i3 + i;
    }

    private final void zzjh() {
        int i;
        int i2;
        int i3 = this.zzbki;
        zzpg.checkState(i3 >= 0 && (i = this.zzbkj) >= 0 && i < 8 && (i3 < (i2 = this.zzbkk) || (i3 == i2 && i == 0)));
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:29:0x0039 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v8, resolved type: byte[] */
    /* JADX DEBUG: Multi-variable search result rejected for r5v9, resolved type: byte */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v7 */
    public final int zzbl(int i) {
        int i2;
        byte b;
        if (i == 0) {
            return 0;
        }
        int i3 = i / 8;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = zzbn(this.zzbki + 1) ? this.zzbki + 2 : this.zzbki + 1;
            int i7 = this.zzbkj;
            if (i7 != 0) {
                byte[] bArr = this.data;
                b = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.zzbki] & 255) << i7);
            } else {
                b = this.data[this.zzbki];
            }
            i -= 8;
            i4 |= (255 & (b == true ? 1 : 0)) << i;
            this.zzbki = i6;
        }
        if (i > 0) {
            int i8 = this.zzbkj + i;
            byte b2 = (byte) (255 >> (8 - i));
            int i9 = zzbn(this.zzbki + 1) ? this.zzbki + 2 : this.zzbki + 1;
            if (i8 > 8) {
                byte[] bArr2 = this.data;
                i2 = (b2 & (((255 & bArr2[i9]) >> (16 - i8)) | ((bArr2[this.zzbki] & 255) << (i8 - 8)))) | i4;
                this.zzbki = i9;
            } else {
                i2 = (b2 & ((255 & this.data[this.zzbki]) >> (8 - i8))) | i4;
                if (i8 == 8) {
                    this.zzbki = i9;
                }
            }
            i4 = i2;
            this.zzbkj = i8 % 8;
        }
        zzjh();
        return i4;
    }

    public final void zzbm(int i) {
        int i2 = this.zzbki;
        int i3 = (i / 8) + i2;
        this.zzbki = i3;
        int i4 = (i % 8) + this.zzbkj;
        this.zzbkj = i4;
        if (i4 > 7) {
            this.zzbki = i3 + 1;
            this.zzbkj = i4 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.zzbki) {
                zzjh();
                return;
            } else if (zzbn(i2)) {
                this.zzbki++;
                i2 += 2;
            }
        }
    }

    public final boolean zzjd() {
        return zzbl(1) == 1;
    }

    public final int zzje() {
        return zzjg();
    }

    public final int zzjf() {
        int zzjg = zzjg();
        return ((zzjg + 1) / 2) * (zzjg % 2 == 0 ? -1 : 1);
    }
}
