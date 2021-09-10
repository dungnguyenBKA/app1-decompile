package com.google.android.gms.internal.measurement;

public enum zzdn implements zzhu {
    RADS(1),
    PROVISIONING(2);
    
    private static final zzhv<zzdn> zzc = new zzdl();
    private final int zzd;

    private zzdn(int i) {
        this.zzd = i;
    }

    public static zzdn zza(int i) {
        if (i == 1) {
            return RADS;
        }
        if (i != 2) {
            return null;
        }
        return PROVISIONING;
    }

    public static zzhw zzb() {
        return zzdm.zza;
    }

    public final String toString() {
        return "<" + zzdn.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
