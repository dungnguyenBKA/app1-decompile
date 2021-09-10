package com.google.android.gms.internal.measurement;

final class zzjb<T> implements zzji<T> {
    private final zzix zza;
    private final zzjw<?, ?> zzb;
    private final boolean zzc;
    private final zzhf<?> zzd;

    private zzjb(zzjw<?, ?> zzjw, zzhf<?> zzhf, zzix zzix) {
        this.zzb = zzjw;
        this.zzc = zzhf.zza(zzix);
        this.zzd = zzhf;
        this.zza = zzix;
    }

    static <T> zzjb<T> zzf(zzjw<?, ?> zzjw, zzhf<?> zzhf, zzix zzix) {
        return new zzjb<>(zzjw, zzhf, zzix);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final T zza() {
        return (T) this.zza.zzbH().zzaD();
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzb(T t, T t2) {
        if (!this.zzb.zzd(t).equals(this.zzb.zzd(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zzb(t);
        this.zzd.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zzc(T t) {
        int hashCode = this.zzb.zzd(t).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzd(T t, T t2) {
        zzjk.zzF(this.zzb, t, t2);
        if (this.zzc) {
            zzjk.zzE(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zze(T t) {
        zzjw<?, ?> zzjw = this.zzb;
        int zzg = zzjw.zzg(zzjw.zzd(t));
        if (!this.zzc) {
            return zzg;
        }
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzh(T t, byte[] bArr, int i, int i2, zzge zzge) {
        T t2 = t;
        if (t2.zzc == zzjx.zza()) {
            t2.zzc = zzjx.zzb();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzi(T t) {
        this.zzb.zze(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzj(T t) {
        this.zzd.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzm(T t, zzha zzha) {
        this.zzd.zzb(t);
        throw null;
    }
}
