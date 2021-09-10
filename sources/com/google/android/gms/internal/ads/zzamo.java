package com.google.android.gms.internal.ads;

public final class zzamo {
    private zzakz zzdld;
    private zzdzw<zzalx> zzdle;

    zzamo(zzakz zzakz) {
        this.zzdld = zzakz;
    }

    private final void zzus() {
        if (this.zzdle == null) {
            zzbaa zzbaa = new zzbaa();
            this.zzdle = zzbaa;
            this.zzdld.zzb((zzei) null).zza(new zzamr(zzbaa), new zzamq(zzbaa));
        }
    }

    public final <I, O> zzamv<I, O> zzb(String str, zzamc<I> zzamc, zzamd<O> zzamd) {
        zzus();
        return new zzamv<>(this.zzdle, str, zzamc, zzamd);
    }

    public final void zzc(String str, zzaif<? super zzalx> zzaif) {
        zzus();
        this.zzdle = zzdzk.zzb(this.zzdle, new zzamt(str, zzaif), zzazp.zzeih);
    }

    public final void zzd(String str, zzaif<? super zzalx> zzaif) {
        this.zzdle = zzdzk.zzb(this.zzdle, new zzams(str, zzaif), zzazp.zzeih);
    }
}
