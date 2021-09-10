package com.google.android.gms.internal.common;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzq<T> implements zzo<T>, Serializable {
    private final zzo<T> zza;
    private volatile transient boolean zzb;
    @NullableDecl
    private transient T zzc;

    zzq(zzo<T> zzo) {
        this.zza = (zzo) zzl.zza(zzo);
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            obj = ic.e(valueOf.length() + 25, "<supplier that returned ", valueOf, ">");
        } else {
            obj = this.zza;
        }
        String valueOf2 = String.valueOf(obj);
        return ic.e(valueOf2.length() + 19, "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.common.zzo
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
