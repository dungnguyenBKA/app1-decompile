package com.google.android.gms.internal.ads;

final class zzehn extends zzehq {
    zzehn(byte[] bArr, int i) {
        super(bArr, i);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzehq
    public final int[] zzb(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            zzehq.zza(iArr2, this.zzije);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzehq
    public final int zzbfp() {
        return 12;
    }
}
