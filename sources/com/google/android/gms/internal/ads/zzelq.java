package com.google.android.gms.internal.ads;

/* JADX WARN: Init of enum zzirh can be incorrect */
/* JADX WARN: Init of enum zziro can be incorrect */
public enum zzelq {
    VOID(Void.class, Void.class, null),
    INT(r1, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzejr.class, zzejr.class, zzejr.zzilz),
    ENUM(r1, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzirq;
    private final Class<?> zzirr;
    private final Object zzirs;

    static {
        Class cls = Integer.TYPE;
    }

    private zzelq(Class cls, Class cls2, Object obj) {
        this.zzirq = cls;
        this.zzirr = cls2;
        this.zzirs = obj;
    }

    public final Class<?> zzbjk() {
        return this.zzirr;
    }
}
