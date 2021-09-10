package com.google.android.gms.internal.ads;

public final class zzccq {
    zzafs zzgex;
    zzafr zzgey;
    zzagg zzgez;
    zzagf zzgfa;
    zzakb zzgfb;
    final e0<String, zzafy> zzgfc = new e0<>();
    final e0<String, zzafx> zzgfd = new e0<>();

    public final zzccq zza(zzagf zzagf) {
        this.zzgfa = zzagf;
        return this;
    }

    public final zzcco zzaor() {
        return new zzcco(this);
    }

    public final zzccq zzb(zzafs zzafs) {
        this.zzgex = zzafs;
        return this;
    }

    public final zzccq zzb(zzafr zzafr) {
        this.zzgey = zzafr;
        return this;
    }

    public final zzccq zzb(zzagg zzagg) {
        this.zzgez = zzagg;
        return this;
    }

    public final zzccq zzb(zzakb zzakb) {
        this.zzgfb = zzakb;
        return this;
    }

    public final zzccq zzb(String str, zzafy zzafy, zzafx zzafx) {
        this.zzgfc.put(str, zzafy);
        this.zzgfd.put(str, zzafx);
        return this;
    }
}
