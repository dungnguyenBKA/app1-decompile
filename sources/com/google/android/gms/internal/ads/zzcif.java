package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcif implements zzbsh {
    private final zzbeb zzdjd;

    zzcif(zzbeb zzbeb) {
        this.zzdjd = !((Boolean) zzwr.zzqr().zzd(zzabp.zzcpe)).booleanValue() ? null : zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.destroy();
        }
    }
}
