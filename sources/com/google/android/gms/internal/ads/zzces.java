package com.google.android.gms.internal.ads;

public final class zzces implements zzeqb<zzcen> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzcer> zzgib;
    private final zzeqo<zzcfb> zzgic;

    public zzces(zzeqo<zzdzv> zzeqo, zzeqo<zzcer> zzeqo2, zzeqo<zzcfb> zzeqo3) {
        this.zzewf = zzeqo;
        this.zzgib = zzeqo2;
        this.zzgic = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcen(this.zzewf.get(), this.zzgib.get(), this.zzgic.get());
    }
}
