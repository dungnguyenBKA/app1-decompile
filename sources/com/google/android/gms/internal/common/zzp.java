package com.google.android.gms.internal.common;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzp<T> implements zzo<T> {
    private volatile zzo<T> zza;
    private volatile boolean zzb;
    @NullableDecl
    private T zzc;

    zzp(zzo<T> zzo) {
        this.zza = (zzo) zzl.zza(zzo);
    }

    public final String toString() {
        Object obj = this.zza;
        if (obj == null) {
            String valueOf = String.valueOf(this.zzc);
            obj = ic.e(valueOf.length() + 25, "<supplier that returned ", valueOf, ">");
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
                    this.zza = null;
                    return zza2;
                }
            }
        }
        return this.zzc;
    }
}
