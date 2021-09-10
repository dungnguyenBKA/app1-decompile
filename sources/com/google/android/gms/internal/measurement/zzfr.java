package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzfr<T> implements Serializable, zzfo {
    @NullableDecl
    final T zza;

    zzfr(@NullableDecl T t) {
        this.zza = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof zzfr)) {
            return false;
        }
        T t = this.zza;
        T t2 = ((zzfr) obj).zza;
        if (t == t2 || t.equals(t2)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        return ic.n(new StringBuilder(valueOf.length() + 22), "Suppliers.ofInstance(", valueOf, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzfo
    public final T zza() {
        return this.zza;
    }
}
