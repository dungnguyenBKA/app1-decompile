package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbka implements zzeqb<zzbjx> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzqt> zzfso;

    private zzbka(zzeqo<Context> zzeqo, zzeqo<zzqt> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzfso = zzeqo2;
    }

    public static zzbka zza(zzeqo<Context> zzeqo, zzeqo<zzqt> zzeqo2) {
        return new zzbka(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjx(this.zzewk.get(), this.zzfso.get());
    }
}
