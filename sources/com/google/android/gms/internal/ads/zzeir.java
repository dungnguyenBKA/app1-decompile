package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;

public final class zzeir implements zzebd {
    private final zzedv zzikw;
    private final int zzikx;

    public zzeir(zzedv zzedv, int i) {
        this.zzikw = zzedv;
        this.zzikx = i;
        if (i >= 10) {
            zzedv.zzd(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzebd
    public final byte[] zzk(byte[] bArr) {
        return this.zzikw.zzd(bArr, this.zzikx);
    }
}
