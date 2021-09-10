package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbnl implements zzeqb<zzbnm> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzdmw> zzfvr;

    public zzbnl(zzeqo<Context> zzeqo, zzeqo<zzbeb> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzazn> zzeqo4) {
        this.zzewk = zzeqo;
        this.zzfuu = zzeqo2;
        this.zzfvr = zzeqo3;
        this.zzfqo = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnm(this.zzewk.get(), this.zzfuu.get(), this.zzfvr.get(), this.zzfqo.get());
    }
}
