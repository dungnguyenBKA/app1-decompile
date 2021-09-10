package com.google.android.gms.internal.measurement;

final class zzfw extends zzft {
    private final zzfv zza = new zzfv();

    zzfw() {
    }

    @Override // com.google.android.gms.internal.measurement.zzft
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.zza.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
