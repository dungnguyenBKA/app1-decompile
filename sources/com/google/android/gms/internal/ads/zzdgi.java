package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdgi implements zzeqb<zzdgg> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzatx> zzexx;
    private final zzeqo<String> zzfyr;

    public zzdgi(zzeqo<zzatx> zzeqo, zzeqo<Context> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzdzv> zzeqo4) {
        this.zzexx = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfyr = zzeqo3;
        this.zzewf = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgg(this.zzexx.get(), this.zzewk.get(), this.zzfyr.get(), this.zzewf.get());
    }
}
