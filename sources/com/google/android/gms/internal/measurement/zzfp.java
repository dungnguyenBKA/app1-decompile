package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzfp<T> implements Serializable, zzfo {
    final zzfo<T> zza;
    volatile transient boolean zzb;
    @NullableDecl
    transient T zzc;

    zzfp(zzfo<T> zzfo) {
        Objects.requireNonNull(zzfo);
        this.zza = zzfo;
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            obj = ic.n(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        } else {
            obj = this.zza;
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
                    return zza2;
                }
            }
        }
        return this.zzc;
    }
}
