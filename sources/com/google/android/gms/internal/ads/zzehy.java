package com.google.android.gms.internal.ads;

public final class zzehy {
    private final zzeil zzijq;
    private final zzeil zzijr;

    public zzehy(byte[] bArr, byte[] bArr2) {
        this.zzijq = zzeil.zzr(bArr);
        this.zzijr = zzeil.zzr(bArr2);
    }

    public final byte[] zzbfq() {
        zzeil zzeil = this.zzijq;
        if (zzeil == null) {
            return null;
        }
        return zzeil.getBytes();
    }

    public final byte[] zzbfr() {
        zzeil zzeil = this.zzijr;
        if (zzeil == null) {
            return null;
        }
        return zzeil.getBytes();
    }
}
