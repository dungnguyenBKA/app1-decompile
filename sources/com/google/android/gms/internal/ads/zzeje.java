package com.google.android.gms.internal.ads;

public final class zzeje {
    private final byte[] zzilj = new byte[256];
    private int zzilk;
    private int zzill;

    public zzeje(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zzilj[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.zzilj;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & 255;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.zzilk = 0;
        this.zzill = 0;
    }

    public final void zzs(byte[] bArr) {
        int i = this.zzilk;
        int i2 = this.zzill;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.zzilj;
            i2 = (i2 + bArr2[i]) & 255;
            byte b = bArr2[i];
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + bArr2[i2]) & 255] ^ bArr[i3]);
        }
        this.zzilk = i;
        this.zzill = i2;
    }
}
