package com.google.android.gms.internal.ads;

public final class zzckg implements zzeqb<zzckd> {
    private final zzeqo<zzckw> zzexi;
    private final zzeqo<zzckl> zzezr;

    private zzckg(zzeqo<zzckl> zzeqo, zzeqo<zzckw> zzeqo2) {
        this.zzezr = zzeqo;
        this.zzexi = zzeqo2;
    }

    public static zzckg zzaf(zzeqo<zzckl> zzeqo, zzeqo<zzckw> zzeqo2) {
        return new zzckg(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckd(this.zzezr.get(), this.zzexi.get());
    }
}
