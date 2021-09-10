package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

final class zzgi extends zzgk {
    final /* synthetic */ zzgs zza;
    private int zzb = 0;
    private final int zzc;

    zzgi(zzgs zzgs) {
        this.zza = zzgs;
        this.zzc = zzgs.zzc();
    }

    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
