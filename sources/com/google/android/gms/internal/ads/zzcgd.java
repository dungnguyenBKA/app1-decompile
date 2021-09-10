package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;

final class zzcgd implements zzaef {
    private final /* synthetic */ zzcge zzgis;

    zzcgd(zzcge zzcge) {
        this.zzgis = zzcge;
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zztj() {
        if (this.zzgis.zzgfm != null) {
            this.zzgis.zzgfm.zzfw("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final JSONObject zztk() {
        return null;
    }
}
