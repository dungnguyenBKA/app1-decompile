package com.google.android.gms.internal.ads;

public final class zzddm implements zzeqb<zzddk> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdmu> zzgua;

    private zzddm(zzeqo<zzdzv> zzeqo, zzeqo<zzdmu> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzgua = zzeqo2;
    }

    public static zzddm zzaw(zzeqo<zzdzv> zzeqo, zzeqo<zzdmu> zzeqo2) {
        return new zzddm(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddk(this.zzewf.get(), this.zzgua.get());
    }
}
