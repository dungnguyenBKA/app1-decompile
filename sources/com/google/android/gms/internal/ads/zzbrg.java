package com.google.android.gms.internal.ads;

public final class zzbrg implements zzeqb<zzbrh> {
    private final zzeqo<zzcrq> zzfaj;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<String> zzfza;

    private zzbrg(zzeqo<zzdmw> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzcrq> zzeqo3) {
        this.zzfvr = zzeqo;
        this.zzfza = zzeqo2;
        this.zzfaj = zzeqo3;
    }

    public static zzbrg zzm(zzeqo<zzdmw> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzcrq> zzeqo3) {
        return new zzbrg(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrh(this.zzfvr.get(), this.zzfza.get(), this.zzfaj.get());
    }
}
