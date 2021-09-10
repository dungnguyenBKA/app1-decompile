package com.google.android.gms.internal.ads;

public final class zzcko implements zzeqb<zzckl> {
    private final zzeqo<zzckw> zzexi;
    private final zzeqo<zzayy> zzezq;

    private zzcko(zzeqo<zzckw> zzeqo, zzeqo<zzayy> zzeqo2) {
        this.zzexi = zzeqo;
        this.zzezq = zzeqo2;
    }

    public static zzcko zzag(zzeqo<zzckw> zzeqo, zzeqo<zzayy> zzeqo2) {
        return new zzcko(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckl(this.zzexi.get(), this.zzezq.get());
    }
}
