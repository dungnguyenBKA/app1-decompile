package com.google.android.gms.internal.ads;

public enum zzeov {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzejr.zzilz),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzirs;

    private zzeov(Object obj) {
        this.zzirs = obj;
    }
}
