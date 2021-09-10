package com.google.android.gms.internal.ads;

final class zzekr {
    private static final zzekq<?> zzinm = new zzeks();
    private static final zzekq<?> zzinn = zzbhy();

    private static zzekq<?> zzbhy() {
        try {
            return (zzekq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static zzekq<?> zzbhz() {
        return zzinm;
    }

    static zzekq<?> zzbia() {
        zzekq<?> zzekq = zzinn;
        if (zzekq != null) {
            return zzekq;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
