package com.google.android.gms.internal.ads;

final class zzemj {
    private static final zzemh zziso = zzbjx();
    private static final zzemh zzisp = new zzemk();

    static zzemh zzbjv() {
        return zziso;
    }

    static zzemh zzbjw() {
        return zzisp;
    }

    private static zzemh zzbjx() {
        try {
            return (zzemh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
