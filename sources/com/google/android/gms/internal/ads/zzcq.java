package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;

public enum zzcq implements zzelg {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(AdError.NETWORK_ERROR_CODE);
    
    private static final zzelf<zzcq> zzes = new zzcp();
    private final int value;

    private zzcq(int i) {
        this.value = i;
    }

    public static zzcq zzn(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i == 2) {
            return ENUM_FAILURE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static zzeli zzw() {
        return zzcs.zzeu;
    }

    public final String toString() {
        return "<" + zzcq.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
