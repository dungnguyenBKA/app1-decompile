package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbjo implements zzbsh {
    private final zzdog zzfrg;

    public zzbjo(zzdog zzdog) {
        this.zzfrg = zzdog;
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        try {
            this.zzfrg.pause();
        } catch (zzdnt e) {
            zzazk.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        try {
            this.zzfrg.resume();
            if (context != null) {
                this.zzfrg.onContextChanged(context);
            }
        } catch (zzdnt e) {
            zzazk.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        try {
            this.zzfrg.destroy();
        } catch (zzdnt e) {
            zzazk.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}
