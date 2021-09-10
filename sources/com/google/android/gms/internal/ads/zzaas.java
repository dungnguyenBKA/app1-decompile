package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;

public final class zzaas extends zzagk {
    private final ShouldDelayBannerRenderingListener zzclt;

    public zzaas(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zzclt = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagl
    public final boolean zzm(zv zvVar) {
        return this.zzclt.shouldDelayBannerRendering((Runnable) aw.P(zvVar));
    }
}
