package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzddl implements zzdfj<Bundle> {
    private final zzdmu zzfrb;

    public zzddl(zzdmu zzdmu) {
        this.zzfrb = zzdmu;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdmu zzdmu = this.zzfrb;
        if (zzdmu != null) {
            bundle2.putBoolean("render_in_browser", zzdmu.zzaux());
            bundle2.putBoolean("disable_ml", this.zzfrb.zzauy());
        }
    }
}
