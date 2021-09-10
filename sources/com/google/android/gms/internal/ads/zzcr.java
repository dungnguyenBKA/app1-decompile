package com.google.android.gms.internal.ads;

public enum zzcr implements zzelg {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);
    
    private static final zzelf<zzcr> zzes = new zzcu();
    private final int value;

    private zzcr(int i) {
        this.value = i;
    }

    public static zzcr zzo(int i) {
        if (i == 0) {
            return UNKNOWN_PROTO;
        }
        if (i == 1) {
            return AFMA_SIGNALS;
        }
        if (i == 2) {
            return UNITY_SIGNALS;
        }
        if (i != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    public static zzeli zzw() {
        return zzct.zzeu;
    }

    public final String toString() {
        return "<" + zzcr.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
