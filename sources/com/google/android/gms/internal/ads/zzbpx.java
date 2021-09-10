package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.concurrent.Executor;

public final class zzbpx implements zzeqb<zzbya<zzq>> {
    private final zzeqo<zzbud> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbpx(zzeqo<zzbud> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbpx zzo(zzeqo<zzbud> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbpx(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
