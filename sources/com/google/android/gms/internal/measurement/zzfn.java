package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzfn<T> extends zzfm<T> {
    private final T zza;

    zzfn(T t) {
        this.zza = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzfn) {
            return this.zza.equals(((zzfn) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        return ic.n(new StringBuilder(valueOf.length() + 13), "Optional.of(", valueOf, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final T zzb() {
        return this.zza;
    }
}
