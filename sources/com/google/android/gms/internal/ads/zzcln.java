package com.google.android.gms.internal.ads;

public final class zzcln implements zzeqb<zzclo> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<zzclc> zzgjp;

    private zzcln(zzeqo<zzclc> zzeqo, zzeqo<zzbgc> zzeqo2) {
        this.zzgjp = zzeqo;
        this.zzewg = zzeqo2;
    }

    public static zzcln zzah(zzeqo<zzclc> zzeqo, zzeqo<zzbgc> zzeqo2) {
        return new zzcln(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzclo(this.zzgjp.get(), this.zzewg.get());
    }
}
