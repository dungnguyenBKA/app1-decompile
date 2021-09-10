package com.google.android.gms.internal.ads;

public final class zzhz {
    public static final zzhz zzaia = new zzhz(1.0f, 1.0f);
    public final float zzaib;
    public final float zzaic;
    private final int zzaid;

    public zzhz(float f, float f2) {
        this.zzaib = f;
        this.zzaic = f2;
        this.zzaid = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhz.class == obj.getClass()) {
            zzhz zzhz = (zzhz) obj;
            return this.zzaib == zzhz.zzaib && this.zzaic == zzhz.zzaic;
        }
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.zzaic) + ((Float.floatToRawIntBits(this.zzaib) + 527) * 31);
    }

    public final long zzdu(long j) {
        return j * ((long) this.zzaid);
    }
}
