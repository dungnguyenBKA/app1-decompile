package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;

public final class zzbyv implements zzeqb<zzbyp> {
    private final zzeqo<Set<zzbya<VideoController.VideoLifecycleCallbacks>>> zzfvd;

    private zzbyv(zzeqo<Set<zzbya<VideoController.VideoLifecycleCallbacks>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbyv zzv(zzeqo<Set<zzbya<VideoController.VideoLifecycleCallbacks>>> zzeqo) {
        return new zzbyv(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbyp(this.zzfvd.get());
    }
}
