package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

public final class zzbyb implements zzeqb<zzbxz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Set<zzbya<zzqw>>> zzfvd;
    private final zzeqo<zzdmw> zzfvr;

    private zzbyb(zzeqo<Context> zzeqo, zzeqo<Set<zzbya<zzqw>>> zzeqo2, zzeqo<zzdmw> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzfvd = zzeqo2;
        this.zzfvr = zzeqo3;
    }

    public static zzbyb zzo(zzeqo<Context> zzeqo, zzeqo<Set<zzbya<zzqw>>> zzeqo2, zzeqo<zzdmw> zzeqo3) {
        return new zzbyb(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbxz(this.zzewk.get(), this.zzfvd.get(), this.zzfvr.get());
    }
}
