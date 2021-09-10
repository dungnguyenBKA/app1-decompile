package com.google.android.gms.internal.ads;

public final class zzcdz implements zzeqb<zzcea> {
    private final zzeqo<zzcch> zzfih;
    private final zzeqo<zzccd> zzgcy;

    public zzcdz(zzeqo<zzccd> zzeqo, zzeqo<zzcch> zzeqo2) {
        this.zzgcy = zzeqo;
        this.zzfih = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcea(this.zzgcy.get(), this.zzfih.get());
    }
}
