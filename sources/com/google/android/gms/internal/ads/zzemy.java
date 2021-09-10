package com.google.android.gms.internal.ads;

final class zzemy {
    private static final zzemw zziti = zzbkd();
    private static final zzemw zzitj = new zzemv();

    static zzemw zzbkb() {
        return zziti;
    }

    static zzemw zzbkc() {
        return zzitj;
    }

    private static zzemw zzbkd() {
        try {
            return (zzemw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
