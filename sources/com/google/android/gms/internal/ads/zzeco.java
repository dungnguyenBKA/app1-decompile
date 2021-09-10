package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public final class zzeco implements zzeaq {
    private static final byte[] zzidb = new byte[0];
    private final zzegg zzidc;
    private final zzeaq zzidd;

    public zzeco(zzegg zzegg, zzeaq zzeaq) {
        this.zzidc = zzegg;
        this.zzidd = zzeaq;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] byteArray = zzebm.zzb(this.zzidc).toByteArray();
        byte[] zzc = this.zzidd.zzc(byteArray, zzidb);
        byte[] zzc2 = ((zzeaq) zzebm.zza(this.zzidc.zzbdx(), byteArray, zzeaq.class)).zzc(bArr, bArr2);
        return ByteBuffer.allocate(zzc.length + 4 + zzc2.length).putInt(zzc.length).put(zzc).put(zzc2).array();
    }
}
