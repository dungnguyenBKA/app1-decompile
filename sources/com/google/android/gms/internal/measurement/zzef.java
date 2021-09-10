package com.google.android.gms.internal.measurement;

public enum zzef implements zzhu {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    
    private static final zzhv<zzef> zzf = new zzed();
    private final int zzg;

    private zzef(int i) {
        this.zzg = i;
    }

    public static zzef zza(int i) {
        if (i == 0) {
            return UNKNOWN;
        }
        if (i == 1) {
            return STRING;
        }
        if (i == 2) {
            return NUMBER;
        }
        if (i == 3) {
            return BOOLEAN;
        }
        if (i != 4) {
            return null;
        }
        return STATEMENT;
    }

    public static zzhw zzb() {
        return zzee.zza;
    }

    public final String toString() {
        return "<" + zzef.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
