package com.google.android.gms.internal.measurement;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzfq<T> implements zzfo<T> {
    volatile zzfo<T> zza;
    volatile boolean zzb;
    @NullableDecl
    T zzc;

    zzfq(zzfo<T> zzfo) {
        Objects.requireNonNull(zzfo);
        this.zza = zzfo;
    }

    public final String toString() {
        Object obj = this.zza;
        if (obj == null) {
            String valueOf = String.valueOf(this.zzc);
            obj = ic.n(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        }
        String valueOf2 = String.valueOf(obj);
        return ic.n(new StringBuilder(valueOf2.length() + 19), "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzfo
    public final T zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    T zza2 = this.zza.zza();
                    this.zzc = zza2;
                    this.zzb = true;
                    this.zza = null;
                    return zza2;
                }
            }
        }
        return this.zzc;
    }
}
