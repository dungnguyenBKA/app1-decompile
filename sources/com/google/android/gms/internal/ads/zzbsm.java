package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsm extends zzbwf<zzbrm> {
    public zzbsm(Set<zzbya<zzbrm>> set) {
        super(set);
    }

    public final void onAdClosed() {
        zza(zzbsp.zzfzg);
    }

    public final void onAdLeftApplication() {
        zza(zzbso.zzfzg);
    }

    public final void onAdOpened() {
        zza(zzbsr.zzfzg);
    }

    public final void onRewardedVideoCompleted() {
        zza(zzbss.zzfzg);
    }

    public final void onRewardedVideoStarted() {
        zza(zzbsq.zzfzg);
    }

    public final void zzb(zzauk zzauk, String str, String str2) {
        zza(new zzbst(zzauk, str, str2));
    }
}
