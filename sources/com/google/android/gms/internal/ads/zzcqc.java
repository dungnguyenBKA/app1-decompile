package com.google.android.gms.internal.ads;

public final class zzcqc implements zzeqb<zzcpz> {
    private final zzeqo<zzcqi> zzgqz;

    private zzcqc(zzeqo<zzcqi> zzeqo) {
        this.zzgqz = zzeqo;
    }

    public static zzcqc zzag(zzeqo<zzcqi> zzeqo) {
        return new zzcqc(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpz(this.zzgqz.get());
    }
}
