package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final class zzcde implements zzaef {
    private final /* synthetic */ zzcdx zzgfz;
    private final /* synthetic */ ViewGroup zzgga;
    private final /* synthetic */ zzccz zzggb;

    zzcde(zzccz zzccz, zzcdx zzcdx, ViewGroup viewGroup) {
        this.zzggb = zzccz;
        this.zzgfz = zzcdx;
        this.zzgga = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zzc(MotionEvent motionEvent) {
        this.zzgfz.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zztj() {
        zzccz zzccz = this.zzggb;
        if (zzccz.zza(this.zzgfz, zzccx.zzgfi)) {
            this.zzgfz.onClick(this.zzgga);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final JSONObject zztk() {
        return this.zzgfz.zztk();
    }
}
