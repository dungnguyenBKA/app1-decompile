package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

public final class zzcbo implements zzeqb<zzbxz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdmw> zzfvr;

    public zzcbo(zzeqo<Context> zzeqo, zzeqo<zzdmw> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzfvr = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbxz) zzeqh.zza(new zzbxz(this.zzewk.get(), new HashSet(), this.zzfvr.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
