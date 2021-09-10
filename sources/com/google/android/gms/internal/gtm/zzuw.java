package com.google.android.gms.internal.gtm;

/* access modifiers changed from: package-private */
public final class zzuw implements zzun<zzuw> {
    final zzvc<?> zza;
    final int zzb;
    final zzye zzc;
    final boolean zzd = false;

    zzuw(zzvc<?> zzvc, int i, zzye zzye, boolean z, boolean z2) {
        this.zza = zzvc;
        this.zzb = i;
        this.zzc = zzye;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzb - ((zzuw) obj).zzb;
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final zzwj zzb(zzwj zzwj, zzwk zzwk) {
        ((zzut) zzwj).zzz((zzuz) zzwk);
        return zzwj;
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final zzwp zzc(zzwp zzwp, zzwp zzwp2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final zzye zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final zzyf zze() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.gtm.zzun
    public final boolean zzg() {
        return false;
    }
}
