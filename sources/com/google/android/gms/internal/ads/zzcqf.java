package com.google.android.gms.internal.ads;

public final class zzcqf implements zzeqb<zzcqg> {
    private final zzeqo<zzcqb> zzgrb;

    private zzcqf(zzeqo<zzcqb> zzeqo) {
        this.zzgrb = zzeqo;
    }

    public static zzcqf zzah(zzeqo<zzcqb> zzeqo) {
        return new zzcqf(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcqg(this.zzgrb.get());
    }
}
