package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdsk implements zzeqb<zzdsh> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;

    public zzdsk(zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzfqo = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsh(this.zzewk.get(), this.zzfqo.get());
    }
}
