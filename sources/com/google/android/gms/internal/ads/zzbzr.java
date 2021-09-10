package com.google.android.gms.internal.ads;

import android.view.View;

public final class zzbzr implements zzeqb<View> {
    private final zzbyz zzgbk;

    private zzbzr(zzbyz zzbyz) {
        this.zzgbk = zzbyz;
    }

    public static zzbzr zzc(zzbyz zzbyz) {
        return new zzbzr(zzbyz);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzgbk.zzamu();
    }
}
