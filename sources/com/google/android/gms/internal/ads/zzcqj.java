package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcqj implements zzeqb<zzcqi> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcqb> zzfaa;
    private final zzeqo<zzcpv> zzfcp;
    private final zzeqo<zzbqu> zzgrj;

    private zzcqj(zzeqo<Context> zzeqo, zzeqo<zzbqu> zzeqo2, zzeqo<zzcqb> zzeqo3, zzeqo<zzcpv> zzeqo4) {
        this.zzewk = zzeqo;
        this.zzgrj = zzeqo2;
        this.zzfaa = zzeqo3;
        this.zzfcp = zzeqo4;
    }

    public static zzcqj zze(zzeqo<Context> zzeqo, zzeqo<zzbqu> zzeqo2, zzeqo<zzcqb> zzeqo3, zzeqo<zzcpv> zzeqo4) {
        return new zzcqj(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcqi(this.zzewk.get(), this.zzgrj.get(), this.zzfaa.get(), this.zzfcp.get());
    }
}
