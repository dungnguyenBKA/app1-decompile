package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;

public final class zzcej implements zzeqb<zzbya<VideoController.VideoLifecycleCallbacks>> {
    private final zzeqo<zzcgx> zzewe;
    private final zzeqo<Executor> zzfux;
    private final zzcee zzghg;

    public zzcej(zzcee zzcee, zzeqo<zzcgx> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzghg = zzcee;
        this.zzewe = zzeqo;
        this.zzfux = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzfux.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
