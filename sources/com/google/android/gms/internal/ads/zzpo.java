package com.google.android.gms.internal.ads;

public final class zzpo {
    private byte[] data;
    private int zzbki;
    private int zzbkj;
    private int zzbkk;

    public zzpo() {
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:33:0x0029 */
    /* JADX DEBUG: Multi-variable search result rejected for r6v8, resolved type: byte[] */
    /* JADX DEBUG: Multi-variable search result rejected for r6v9, resolved type: byte */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v7 */
    public final int zzbl(int i) {
        int i2;
        int i3;
        int i4;
        byte b;
        boolean z = false;
        if (i == 0) {
            return 0;
        }
        int i5 = i / 8;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = this.zzbkj;
            if (i8 != 0) {
                byte[] bArr = this.data;
                int i9 = this.zzbki;
                b = ((bArr[i9 + 1] & 255) >>> (8 - i8)) | ((bArr[i9] & 255) << i8);
            } else {
                b = this.data[this.zzbki];
            }
            i -= 8;
            i6 |= (255 & (b == true ? 1 : 0)) << i;
            this.zzbki++;
        }
        if (i > 0) {
            int i10 = this.zzbkj + i;
            byte b2 = (byte) (255 >> (8 - i));
            if (i10 > 8) {
                byte[] bArr2 = this.data;
                int i11 = this.zzbki;
                i4 = (b2 & (((255 & bArr2[i11 + 1]) >> (16 - i10)) | ((bArr2[i11] & 255) << (i10 - 8)))) | i6;
                this.zzbki = i11 + 1;
            } else {
                byte[] bArr3 = this.data;
                int i12 = this.zzbki;
                i4 = (b2 & ((255 & bArr3[i12]) >> (8 - i10))) | i6;
                if (i10 == 8) {
                    this.zzbki = i12 + 1;
                }
            }
            i6 = i4;
            this.zzbkj = i10 % 8;
        }
        int i13 = this.zzbki;
        if (i13 >= 0 && (i2 = this.zzbkj) >= 0 && i2 < 8 && (i13 < (i3 = this.zzbkk) || (i13 == i3 && i2 == 0))) {
            z = true;
        }
        zzpg.checkState(z);
        return i6;
    }

    public zzpo(byte[] bArr) {
        this(bArr, bArr.length);
    }

    private zzpo(byte[] bArr, int i) {
        this.data = bArr;
        this.zzbkk = i;
    }
}
