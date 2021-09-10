package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzay;

public final class zzbis implements zzeqb<zzay> {
    private final zzeqo<Context> zzewk;

    public zzbis(zzeqo<Context> zzeqo) {
        this.zzewk = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzay) zzeqh.zza(new zzay(this.zzewk.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
