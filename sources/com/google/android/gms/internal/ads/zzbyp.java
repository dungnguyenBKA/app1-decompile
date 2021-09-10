package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

public final class zzbyp extends zzbwf<VideoController.VideoLifecycleCallbacks> {
    @GuardedBy("this")
    private boolean zzeua;

    protected zzbyp(Set<zzbya<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void onVideoEnd() {
        zza(zzbyr.zzfzg);
    }

    public final void onVideoPause() {
        zza(zzbys.zzfzg);
    }

    public final synchronized void onVideoPlay() {
        if (!this.zzeua) {
            zza(zzbyt.zzfzg);
            this.zzeua = true;
        }
        zza(zzbyw.zzfzg);
    }

    public final synchronized void onVideoStart() {
        zza(zzbyu.zzfzg);
        this.zzeua = true;
    }
}
