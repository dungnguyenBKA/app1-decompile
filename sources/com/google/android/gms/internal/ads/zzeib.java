package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;

public final class zzeib implements zzeaq {
    private final zzeio zzijy;
    private final zzebd zzijz;
    private final int zzika;

    public zzeib(zzeio zzeio, zzebd zzebd, int i) {
        this.zzijy = zzeio;
        this.zzijz = zzebd;
        this.zzika = i;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] zzn = this.zzijy.zzn(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] copyOf = Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8);
        return zzeho.zza(zzn, this.zzijz.zzk(zzeho.zza(bArr2, zzn, copyOf)));
    }
}
