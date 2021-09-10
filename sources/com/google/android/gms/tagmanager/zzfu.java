package com.google.android.gms.tagmanager;

/* access modifiers changed from: package-private */
public final class zzfu extends Number implements Comparable<zzfu> {
    private long zzb;
    private final boolean zzc = true;

    private zzfu(long j) {
        this.zzb = j;
    }

    public static zzfu zzd(long j) {
        return new zzfu(j);
    }

    public final byte byteValue() {
        return (byte) ((int) zzb());
    }

    public final double doubleValue() {
        if (this.zzc) {
            return (double) this.zzb;
        }
        return 0.0d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzfu) && compareTo((zzfu) obj) == 0;
    }

    public final float floatValue() {
        return (float) doubleValue();
    }

    public final int hashCode() {
        return new Long(zzb()).hashCode();
    }

    public final int intValue() {
        return (int) zzb();
    }

    public final long longValue() {
        return zzb();
    }

    public final short shortValue() {
        return (short) ((int) zzb());
    }

    public final String toString() {
        return this.zzc ? Long.toString(this.zzb) : Double.toString(0.0d);
    }

    /* renamed from: zza */
    public final int compareTo(zzfu zzfu) {
        if (!this.zzc || !zzfu.zzc) {
            return Double.compare(doubleValue(), zzfu.doubleValue());
        }
        return new Long(this.zzb).compareTo(Long.valueOf(zzfu.zzb));
    }

    public final long zzb() {
        return this.zzc ? this.zzb : (long) 0.0d;
    }

    public final boolean zzf() {
        return !this.zzc;
    }

    public final boolean zzg() {
        return this.zzc;
    }
}
