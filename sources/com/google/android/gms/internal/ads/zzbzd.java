package com.google.android.gms.internal.ads;

import android.view.View;

public final class zzbzd implements zzeqb<View> {
    private final zzbyz zzgbk;

    private zzbzd(zzbyz zzbyz) {
        this.zzgbk = zzbyz;
    }

    public static zzbzd zza(zzbyz zzbyz) {
        return new zzbzd(zzbyz);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzgbk.zzamv();
    }
}
