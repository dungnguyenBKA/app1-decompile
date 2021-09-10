package com.google.android.gms.internal.ads;

public enum zzefe implements zzelg {
    UNKNOWN_FORMAT(0),
    UNCOMPRESSED(1),
    COMPRESSED(2),
    DO_NOT_USE_CRUNCHY_UNCOMPRESSED(3),
    UNRECOGNIZED(-1);
    
    private static final zzelf<zzefe> zzes = new zzefg();
    private final int value;

    private zzefe(int i) {
        this.value = i;
    }

    public static zzefe zzfd(int i) {
        if (i == 0) {
            return UNKNOWN_FORMAT;
        }
        if (i == 1) {
            return UNCOMPRESSED;
        }
        if (i == 2) {
            return COMPRESSED;
        }
        if (i != 3) {
            return null;
        }
        return DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(zzefe.class.getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zzv());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
