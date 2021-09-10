package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Collections;
import java.util.Set;

public final class zzbxd implements zzeqb<Set<zzbya<VideoController.VideoLifecycleCallbacks>>> {
    private final zzbwg zzgav;

    private zzbxd(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbxd zzac(zzbwg zzbwg) {
        return new zzbxd(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
