package com.google.android.gms.internal.ads;

public final class zzcza {
    private final zzcxy zzfzw;
    private final zzcco zzgza;
    private final zzbrr zzgzb;

    public zzcza(zzcco zzcco, zzdrz zzdrz) {
        this.zzgza = zzcco;
        zzcxy zzcxy = new zzcxy(zzdrz);
        this.zzfzw = zzcxy;
        this.zzgzb = new zzcyz(zzcxy, zzcco.zzaon());
    }

    public final zzcaq zzaso() {
        return new zzcaq(this.zzgza, this.zzfzw.zzasj());
    }

    public final zzcxy zzasp() {
        return this.zzfzw;
    }

    public final zzbtb zzasq() {
        return this.zzfzw;
    }

    public final zzbrr zzasr() {
        return this.zzgzb;
    }

    public final void zzd(zzwx zzwx) {
        this.zzfzw.zzc(zzwx);
    }
}
