package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzbpi implements zzeqb<zzbpf> {
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzayn> zzfxo;

    private zzbpi(zzeqo<d> zzeqo, zzeqo<zzayn> zzeqo2) {
        this.zzfsz = zzeqo;
        this.zzfxo = zzeqo2;
    }

    public static zzbpi zze(zzeqo<d> zzeqo, zzeqo<zzayn> zzeqo2) {
        return new zzbpi(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbpf(this.zzfsz.get(), this.zzfxo.get());
    }
}
