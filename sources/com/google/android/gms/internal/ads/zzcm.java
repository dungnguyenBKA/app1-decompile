package com.google.android.gms.internal.ads;

public enum zzcm implements zzelg {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3),
    DG(4),
    DG_XTEA(5);
    
    private static final zzelf<zzcm> zzes = new zzco();
    private final int value;

    private zzcm(int i) {
        this.value = i;
    }

    public static zzcm zzm(int i) {
        if (i == 0) {
            return UNKNOWN_ENCRYPTION_METHOD;
        }
        if (i == 1) {
            return BITSLICER;
        }
        if (i == 2) {
            return TINK_HYBRID;
        }
        if (i == 3) {
            return UNENCRYPTED;
        }
        if (i == 4) {
            return DG;
        }
        if (i != 5) {
            return null;
        }
        return DG_XTEA;
    }

    public static zzeli zzw() {
        return zzcn.zzeu;
    }

    public final String toString() {
        return "<" + zzcm.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
