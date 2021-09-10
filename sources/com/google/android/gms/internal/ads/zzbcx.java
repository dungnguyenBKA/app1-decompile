package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzbcx extends zzbl {
    static final zzbcx zzepj = new zzbcx();

    zzbcx() {
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbs zza(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new zzbu();
        }
        if ("mvhd".equals(str)) {
            return new zzbt();
        }
        return new zzbv(str);
    }
}
